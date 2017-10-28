alias vim-plugin-install="vim +PluginInstall +qall"

export PATH="~/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

system_type=$(uname -s)
if [ "$system_type" = "Darwin" ]; then
    alias flush-dns="sudo killall -HUP mDNSResponder"
    alias kill-bar='killall ControlStrip'
fi
