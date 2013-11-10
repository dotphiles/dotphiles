# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/office-core-switches"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "office-core-switches"

# Split window into panes.
split_v
#split_h 50

# Run commands.
run_cmd "echo aoc1"  1   # runs in active pane
run_cmd "echo aoc2" 2  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
select_pane 1
