# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/switches"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "switches"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "shell"
  load_window "nextdc-core-switches"
  load_window "nextdc-access-switches"
  load_window "interactive-core-switches"
  load_window "interactive-access-switches"
  load_window "office-core-switches"
  load_window "office-access-switches"
  load_window "office-lan-switches"
  load_window "hongkong-core-switches"
  load_window "japan-core-switches"
  load_window "unitedstates-core-switches"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
