if [ -e "/usr/local/bin/brew" ] && [ -e "/opt/workbrew/bin/brew" ]; then
  eval "$(/usr/local/bin/brew shellenv)"
  export HOMEBREW_BREW_WRAPPER="/opt/workbrew/bin/brew"
fi

# Must be Last
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/dracula.omp.json)"
fi