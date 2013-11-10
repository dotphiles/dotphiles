# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/dotphiles"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "dotphiles"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "dotphiles"
  load_window "dotvim"
  load_window "dotzsh"
  load_window "dotsync"
  load_window "dotphiles-upstream"
  load_window "dotvim-upstream"
  load_window "dotzsh-upstream"
  load_window "dotsync-upstream"


  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
