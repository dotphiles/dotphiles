# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/Projects/bgplab"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "as65003-admin"

# Split window into panes.
split_v
split_v
select_pane 1
split_h 50
select_pane 3
split_h 50
select_pane 5
split_h 50

# Run commands.
run_cmd "telnet bgplab.apnic.net 3031" 1  # runs in pane 1
run_cmd "telnet bgplab.apnic.net 3032" 2  # runs in pane 2
run_cmd "telnet bgplab.apnic.net 3033" 3  # runs in pane 3
run_cmd "telnet bgplab.apnic.net 3034" 4  # runs in pane 4
run_cmd "telnet bgplab.apnic.net 3035" 5  # runs in pane 5
run_cmd "telnet bgplab.apnic.net 3036" 6  # runs in pane 6

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
select_pane 1
