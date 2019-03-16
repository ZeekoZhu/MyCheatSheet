alias stls="sudo systemctl start"
alias stlr="sudo systemctl restart"
alias stlR="sudo systemctl daemon-reload"
alias stlp="sudo systemctl stop"
alias stl="sudo systemctl status"

set -gx MSBuildSDKsPath /opt/dotnet/sdk/(dotnet --version)/Sdks
set -gx PATH /home/zeeko/.yarn/bin $PATH
