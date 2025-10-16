CUSTOM_PATHS=(
  "/Users/kaya/.spicetify"
  "/opt/homebrew/opt/ruby/bin"
  "$(gem env home)/bin"
  "/Users/kaya/kattis-cli"
)

export PATH=$(IFS=":"; echo "${CUSTOM_PATHS[*]}"):$PATH
