#############################################################
# Generic configuration that applies to all shells
#############################################################

source ~/.shellpaths
source ~/.shellvars
source ~/.shellsecrets
source ~/.shellfn
source ~/.shellaliases
source ~/.iterm2_shell_integration.`basename $SHELL`
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Private/Proprietary shell aliases (not to be checked into the public repo) :)
#source ~/Dropbox/Private/Boxes/osx/.shellaliases
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
