#!/bin/bash

echo 'Installing dot profile...'

touch /devbox/.profile

echo "
# Get git branch function
get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1 template
export PS1=\"\[\e[01;37m\]\u\[\e[0m\]\[\e[00;37m\] @ \[\e[0m\]\[\e[01;37m\]\h\[\e[0m\]\[\e[00;37m\] ->\[\e[01;31m\]\$(get_git_branch) \[\e[0m\]\[\e[01;31m\]\W\[\e[0m\]\[\e[00;37m\] : \[\e[0m\]\"

# Aliases
alias rs=\"rails s -b 0.0.0.0\" # For rails 4.2+ you need to use this alias because your server will bind by default to 127.0.0.1/localhost
alias be=\"bundle exec\" # Bundle exec
alias ac=\"!git add --all && git commit\" # Git add all and commit
" > /devbox/.profile


echo -e "\n# Set /devbox/.profile path" >> .profile
echo 'if [ -f "/devbox/.profile" ]; then . "/devbox/.profile"; fi' >> .profile

echo '...Done.'