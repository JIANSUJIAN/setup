
# poetry auto-loaded autocompletion
poetry completions bash >> ~/.bash_completion



eval "$(register-python-argcomplete pipx)"
# source ~/opt/anaconda3/etc/profile.d/conda.sh
# conda activate myenv

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


 # Fzf does not use ripgrep by default, so we need to tell fzf to use ripgrep by defining a FZF_DEFAULT_COMMAND variable. 

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

# Pyenv
#
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# aws aliases
alias aws_dev='export AWS_PROFILE=wm-ds-js AWS_REGION=us-east-1 && aws configure list &> /dev/null || aws sso login'
# alias aws_qa='export AWS_PROFILE=qa AWS_REGION=us-east-1 && aws configure list &> /dev/null || aws sso login'
# alias aws_prod='export AWS_PROFILE=prod AWS_REGION=us-east-1 && aws configure list &> /dev/null || aws sso login'



