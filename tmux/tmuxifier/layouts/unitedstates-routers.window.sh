# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/unitedstates-routers"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "unitedstates-routers"

# Split window into panes.
#split_v
#split_h 50

# Run commands.
run_cmd "echo usgw"  1   # runs in active pane

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
select_pane 1
