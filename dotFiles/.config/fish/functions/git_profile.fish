#!/usr/bin/fish

function git_profile
  if test "work" = $argv
    set name "Jerry"
    set email "jerry@mail.cnblogs.com"
  end
  if test "zeeko" = $argv
    set name "ZeekoZhu"
    set email "vaezt@outlook.com"
  end

  if test -n $name
    git config user.name $name
  end
  if test -n $email
    git config user.email $email
  end
end
