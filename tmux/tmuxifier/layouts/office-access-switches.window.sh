# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/office-access-switches"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "office-access-switches"

# Split window into panes.
split_v
select_pane 1
split_h 50
select_pane 3
split_h 50

# Run commands.
run_cmd "echo aos1"  1   # runs in active pane
run_cmd "echo aos2" 2  # runs in pane 1
run_cmd "echo aos3" 3  # runs in pane 1
run_cmd "echo aos4" 4  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
select_pane 1
