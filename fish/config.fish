if status is-interactive
    # Commands to run in interactive sessions can go here
end

direnv hook fish | source

abbr -a ni nvim
abbr -a vim nvim
abbr -a gob go build
abbr -a gst git status
abbr -a gco git checkout
alias ls=exa
alias ll='exa --long --header --git'
alias cat=bat
# 还原docker的启动命令
alias runlike="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock assaflavie/runlike"

# 用bat来显示man文档; bat是更先进的cat
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# ucloud
alias ucd='cd ~/workspace/ucloud/virtualenv/backends'
set -x PATH $PATH ~/workspace/ucloud/bin ~/go/bin
