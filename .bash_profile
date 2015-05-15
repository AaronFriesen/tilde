# Common path additions
export CDPATH=":~/Documents/school"

# The one true text editor
export EDITOR=vim

# Never autocomplete on DS_Store
export FIGNORE="DS_Store"

# Setting PATH for Python 3.4
export PATH=~/bin:$PATH
export SCALA_HOME=/usr/bin/scala-2.11.1

# You complete me, {git|bash}
if [ -f ~/bin/.git-completion.bash ]; then
    . ~/bin/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Make vim stop autocompleting on garbage
complete -f -X '*.@(pdf|class|o|jpg|png|out|log|aux)' vim
# Make open stop autocompleting .tex files b/c TexWorks is garbage
complete -f -X '*.tex' open
# Make scalac stop autocompleting on garbage
complete -f -X '*.class' scalac

# Parse git branch, but don't parse (home) because I'm technically always in a git repo called home
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' -e 's/ (home)//'
}

old_PS1="\[\033[1;34m\]\u\[\033[00m\]@\[\033[1;32m\]\h\[\033[00m\]:\[\033[1;33m\]\w\[\033[1;36m\]\$(parse_git_branch)\[\033[00m\] $ "

# Sexify my prompt
export PS1="\[\033[38;5;214m\]\u\[\033[00m\]@\[\033[38;5;104m\]\h\[\033[00m\]:\[\033[38;5;214m\]\w\[\033[38;5;105m\]\$(parse_git_branch)\[\033[00m\] $ "

# Use my aliases
source ~/.bash_aliases
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
