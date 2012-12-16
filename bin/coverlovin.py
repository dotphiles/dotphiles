#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''recursively process subdirectories of given directory, downloading
appropriate cover images from Google Images if .mp3 files are found'''

'''author: James Stewart
https://launchpad.net/coverlovin'''

import os, sys
import urllib, urllib2
import simplejson
import id3reader
import logging
from optparse import OptionParser

log = logging.getLogger('coverlovinLogger')
log.setLevel(logging.INFO)
handler = logging.StreamHandler()
formatter = logging.Formatter("%(message)s")
handler.setFormatter(formatter)
log.addHandler(handler)

googImgOpts = ["small", "medium", "large"]
fileTypeOpts = ["jpg", "png", "gif"]
defaultReferer = "https://launchpad.net/coverlovin"
googleImagesUrl = "https://ajax.googleapis.com/ajax/services/search/images"
musicDir = ""
fileType = ""
fileName = ""
fileSize = ""
referer = ""
resultCount = ""
overWrite = False

def sanitise_for_url(input):
    '''sanitise a string so that it is ok to be used in a url'''

    if input == None: input = ""

    words = input.split(' ')
    output = ''

    for word in words:
        try:
            word = urllib.quote(word.encode('utf-8'))
            output += word + '+'
        except Exception, err:
            log.error("Exception: " + str(err))

    output = output[:-1]
    return output

def dl_cover(urlList, directory):
    '''download cover images from url to given dir'''

    coverImg = os.path.join(directory, fileName)

    if os.path.isfile(coverImg) and overWrite:
            log.info("%s exists and overwrite enabled - moving to %s.bak" % (coverImg, coverImg))
            os.rename(coverImg, (coverImg + '.bak'))

    for url in urlList:
        log.info("Trying url: " + url)
        urlOk = True

        try:
            coverImgWeb = urllib2.urlopen(url, None, 10)
        except Exception, err:
            log.error("Exception: " + str(err))
            urlOk = False

        if urlOk:
            log.info("Downloading cover from: " + url)
            log.info(" to:" + coverImg)
            coverImgLocal = open(os.path.join(directory, fileName), 'w')
            coverImgLocal.write(coverImgWeb.read())
            coverImgWeb.close()
            coverImgLocal.close()
            break

def get_img_urls(searchWords):
    '''return list of cover urls obtained by searching
    google images for searchWords'''

    imgUrls = []

    # sanitise searchwords
    searchWords = [sanitise_for_url(searchWord) for searchWord in searchWords]

    # construct url
    url = googleImagesUrl + '?v=1.0&q='
    for searchWord in searchWords: url += searchWord + '+'
    url = url[:-1]
    url += '&as_filetype=' + fileType
    url += '&imgsz=' + fileSize
    url += '&rsz=' + str(resultCount)

    print url

    request = urllib2.Request(url, None, {'Referer': referer})

    try:
        response = urllib2.urlopen(request, None, 10)
    except Exception, err:
        log.error("Exception: " + str(err))
        return imgUrls

    try:
        results = simplejson.load(response)
    except Exception, err:
        log.error("Exception: " + str(err))

    for result in results['responseData']['results']:
        imgUrls.append(result['url'])

    return imgUrls

def process_dir(thisDir):
    '''recursively process all sub-directories of given directory'''

    dirs = []
    files = []

    for item in os.listdir(thisDir):
        itemFullPath=os.path.join(thisDir, item)

        if os.path.isdir(itemFullPath):
            dirs.append(itemFullPath)
        else:
            files.append(item)

    dirs.sort()
    files.sort()

    for dir in dirs:
        process_dir(dir)

    log.info("Evaluating " + thisDir)

    # if cover image exists and overwrite is disabled, no further work required
    if os.path.isfile(os.path.join(thisDir, fileName)) and overWrite == False:
        log.info(thisDir + ": " + fileName + " exists and overwrite is disabled - skipping")
        return

    for file in files:
        fileFullPath = os.path.join(thisDir, file)
        if os.path.getsize(fileFullPath) > 128:

            # check file for id3 tag info
            try:
                id3r = id3reader.Reader(fileFullPath)
            except:
                log.info("Skipping " + file + " due to unicode error")
                continue

            artist = id3r.getValue('performer')
            album = id3r.getValue('album')

            # sanitise None values
            if artist == None: artist = ''
            if album == None: album = ''

            if artist != '' or album != '':
                try:
                    log.info("Album info found in " + file + ": " + artist + " - " + album)
                    coverUrls = get_img_urls([artist, album])
                    if len(coverUrls) > 0:
                        dl_cover(coverUrls, thisDir)
                        break
                    else:
                        log.warn("No cover image URL found")
                except:
                    log.warn("File " + file + " contains id3 tags with corrupted encoding.")
            else:
                # didn't find enough info to get cover
                pass
        else:
            # id3reader fails on files < 128 bytes
            pass

def parse_args_opts():
    '''parse command line argument and options'''

    parser = OptionParser()

    parser.add_option("-s", "--size", dest="size", action="store", default="small", help="file size: small, medium, or large")
    parser.add_option("-i", "--image", dest="image", action="store", default="jpg", help="image format, eg jpg, png, gif")
    parser.add_option("-n", "--name", dest="name", action="store", default="cover.jpg", help="file name, eg \"cover.jpg\"")
    parser.add_option("-r", "--referer", dest="referer", action="store", default=defaultReferer, help="referer url, eg \"http://www.google.com\"")
    parser.add_option("-c", "--count", dest="count", action="store", default="8", type="int", help="image lookup count (default: 8))")
    parser.add_option("-o", "--overwrite", dest="overwrite", action="store_true", default=False, help="overwrite (default False)")
    parser.set_usage("Usage: coverlovin.py <music_dir> [options]")
    (options, args) = parser.parse_args()

    # set musicDir or bail if invalid
    if len(sys.argv) < 2:
        parser.print_help()
        sys.exit(2)
    elif os.path.isdir(sys.argv[1]) == False:
        log.error(sys.argv[1] + " is not a valid directory")
        parser.print_help()
        sys.exit(2)
    else:
        musicDir = sys.argv[1]

    # set fileSize or bail if invalid
    if options.size in googImgOpts:
        fileSize = options.size
    else:
        log.error(options.size + " is not a valid size")
        parser.print_help()
        sys.exit(2)

    # set other variables
    fileType = options.image
    fileName = options.name
    referer = options.referer
    resultCount = int(options.count)

    return ( { "musicDir" : musicDir, "fileSize" : fileSize, "fileType" : fileType, "fileName" : fileName, "referer" : referer, "resultCount" : resultCount, "overWrite" : options.overwrite} )

def main():
    '''recursively download cover images for mp3 files in a
    given directory and its sub-directories'''

    global fileType
    global fileName
    global fileSize
    global referer
    global resultCount
    global overWrite

    argsOpts = parse_args_opts()

    fileType = unicode(argsOpts['fileType'], 'utf-8')
    fileName = unicode(argsOpts['fileName'], 'utf-8')
    fileSize = unicode(argsOpts['fileSize'], 'utf-8')
    referer = unicode(argsOpts['referer'], 'utf-8')
    resultCount = argsOpts['resultCount']
    overWrite = argsOpts['overWrite']

    process_dir(unicode(argsOpts['musicDir'], 'utf-8'))

    return 0

if __name__ == "__main__":
    sys.exit(main())
