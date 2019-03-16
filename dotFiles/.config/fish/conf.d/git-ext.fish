#! /usr/bin/fish
function setup-git
    git config --global alias.ignore \
        '!gi() { curl -sL https://www.gitignore.io/api/$@ ;}; gi'
    git config --global i18n.commitencoding utf-8
# 设置 commit message 编码
    git config --global i18n.commitencoding utf-8
    git config --global i18n.logoutputencoding utf-8
# git lg
    git config --global alias.lg "log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"
# git commend 向上一个 commit 中追加文件
    git config --global alias.commend 'commit --amend --no-edit'
# git undo
    git config --global alias.undo 'reset HEAD~'
    # git commit -S
    git config --global alias.cs 'commit -S'
end
