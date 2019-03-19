alias stls="sudo systemctl start"
alias stlr="sudo systemctl restart"
alias stlR="sudo systemctl daemon-reload"
alias stlp="sudo systemctl stop"
alias stl="sudo systemctl status"
alias pc="proxychains4"
fish_vi_key_bindings

set -gx DOTNET_ROOT /opt/dotnet
set -gx MSBuildSDKsPath /opt/dotnet/sdk/(dotnet --version)/Sdks
set -gx PATH $HOME/.yarn/bin $HOME/.cargo/bin $HOME/.dotnet/tools $PATH

