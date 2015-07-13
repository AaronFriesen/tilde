# Autocomplete aliases if possible
shopt -s expand_aliases
shopt -s no_empty_cmd_completion

# Convenient listing
alias ls="ls -FG"
alias la="ls -FAG"
alias lf="ls -GAhl"

# Convenient cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Common places to CD to
alias cdc="cd ~/Documents/code"
alias cds="cd ~/Documents/code/scala"
alias cdj="cd ~/Documents/code/java"
alias cdd="cd ~/Documents"
alias cdg="cd ~/Documents/github"
alias cdt="cd ~/Documents/github/Trydent"

# Files I open a lot
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias vv="vim ~/.vimrc"

# Because $PATH_VARIABLES are deprecated for some utils
alias grep="grep --color=auto --binary-files=without-match"
alias mkdir="mkdir -p"
alias tree="tree -CF"

# Don't judge me
alias much="git"
alias such="git"
alias very="git"
alias wow="git status"


# "New Branch"
alias nb="git checkout -b"

# "Scala Run"
alias sr="scalac *.scala && scala \`grep 'extends App' *.scala | col 2\` "

# Misc
alias add="git status -s | egrep \"^[ ,M]M\" | col 2 | xargs git add"
alias bfg="java -jar ~/bin/res/bfg-1.12.3.jar"
alias act="source ./bin/activate"

# Various functions, should be self-explanatory
function make_and_move() {
    if [ ! -d $1 ]; then
        mkdir $1
    fi
    cd $1
}
function compile_junit() {
    javac -cp .:/Users/aaron/bin/res/hamcrest-core-1.3.jar:/Users/aaron/bin/res/junit-4.11.jar "$1"
}
function run_junit() {
    java -cp .:/Users/aaron/bin/res/hamcrest-core-1.3.jar:/Users/aaron/bin/res/junit-4.11.jar org.junit.runner.JUnitCore "$1"
}
function take_notes() {
    if [ ! -f "$1.tex" ]; then
        cp ~/bin/res/note.tex ./"$1".tex && vim ./"$1".tex +46 -c ":normal $"
    else
        echo "$1.tex already exists"
    fi
}
function make_pdf() {
    if [ "$#" -eq 1 ]; then
        pdflatex "$1" && open ${1%.tex}.pdf
    else
        pdflatex *.tex && open *.pdf
    fi
}
function clean_whitespace() {
    find . -depth -name '* *' | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' -)" ; done
}

# Aliasing said functions
alias junitc=compile_junit
alias junit=run_junit
alias mcd=make_and_move
alias note=take_notes
alias mk=make_pdf
alias clean-whitespace=clean_whitespace
