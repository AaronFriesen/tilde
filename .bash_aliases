shopt -s expand_aliases
shopt -s no_empty_cmd_completion

alias ls="ls -FG"
alias la="ls -FAG"
alias lf="ls -GAhl"
alias cdc="cd ~/Documents/code"
alias cds="cd ~/Documents/code/scala"
alias cdj="cd ~/Documents/code/java"
alias cdd="cd ~/Documents"
alias cdg="cd ~/Documents/github"
alias cdt="cd ~/Documents/github/Trydent"
alias act="source ./bin/activate"
alias sbt="sbt -java-home /Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home"
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias vv="vim ~/.vimrc"
alias nb="git checkout -b"
alias sr="scalac *.scala && scala App"
alias mkdir="mkdir -p"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias much="git"
alias such="git"
alias very="git"
alias wow="git status"
alias add="git status -s | egrep \"^[\s,M]M\" | col 2 | xargs git add"



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
    find . -depth -name '* *' | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' _)" ; done
}
function col {
    awk -v col=$1 '{print $col}'
}





alias junitc=compile_junit
alias junit=run_junit
alias mcd=make_and_move
alias note=take_notes
alias mk=make_pdf
alias clean-whitespace=clean_whitespace
