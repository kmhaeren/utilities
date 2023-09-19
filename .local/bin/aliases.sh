!#/bin/zsh

alias preq='pip install -r requirements.txt'
alias gl='gcloud auth login'
alias gla='gcloud auth application-default login'
alias gpl='gcloud projects list'
alias gchp='gcloud config set project'
alias venvs='nautilus ~/venvs &'
alias pip='noglob pip'
alias pip3='noglob pip3'

clear_port() {kill -9 $(lsof -t -i:"$1");}