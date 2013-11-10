# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/bgplab"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "bgplab"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "shell"
  load_window "bgplab-configs"
  load_window "as64991"
  load_window "as64992"
  load_window "as65001-admin"
  load_window "as65002-admin"
  load_window "as65003-admin"
  load_window "as65004-admin"
  #load_window "as65005-admin"
  #load_window "as65006-admin"
  #load_window "as65007-admin"
  #load_window "as65008-admin"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
