# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/routers"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "routers"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "shell"
  load_window "nextdc-routers"
  load_window "interactive-routers"
  load_window "office-routers"
  load_window "hongkong-routers"
  load_window "japan-routers"
  load_window "unitedstates-routers"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
