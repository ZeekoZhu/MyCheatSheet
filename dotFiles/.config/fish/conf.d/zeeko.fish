alias stls="sudo systemctl start"
alias stlr="sudo systemctl restart"
alias stlR="sudo systemctl daemon-reload"
alias stlp="sudo systemctl stop"
alias stl="sudo systemctl status"
alias ustls="systemctl --user start"
alias ustlr="systemctl --user restart"
alias ustlR="systemctl --user daemon-reload"
alias ustlp="systemctl --user stop"
alias ustl="systemctl --user status"
alias fsi="dotnet fsi --readline"
alias tiga="tig --all"
alias yap="yay --pacman powerpill"
fish_vi_key_bindings
fish_user_key_bindings

set -Ux DOTNET_ROLL_FORWARD_ON_NO_CANDIDATE_FX 2
set -Ux DOTNET_ROOT $DOTNET_HOME/current
source (navi widget fish)
# set -x HTTP_PROXY http://localhost:8001
# set -x HTTPS_PROXY http://localhost:8001

