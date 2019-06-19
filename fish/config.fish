direnv hook fish | source

set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH /Users/wangzhigang/workspace/golang/3rdpkg /Users/wangzhigang/workspace/golang/xishiqu.com /Users/wangzhigang/workspace/golang/mihoyo
set -x GOBIN /Users/wangzhigang/workspace/golang/3rdpkg/bin
set -x PATH $PATH $GOROOT/bin $GOBIN
set -x no_proxy gopkg.mihoyo.com,platgit.mihoyo.com
set -x http_proxy http://0.0.0.0:1087
set -x https_proxy http://0.0.0.0:1087

abbr -a ll ls -l
abbr -a ni nvim
abbr -a vim nvim
abbr -a gob go build
abbr -a gst git status
abbr -a gco git checkout
abbr -a platgo cd /Users/wangzhigang/workspace/golang/mihoyo/src
abbr -a takumi cd /Users/wangzhigang/workspace/golang/zhigang.wang/src/gopkg.mihoyo.com/takumi
abbr -a code '/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
