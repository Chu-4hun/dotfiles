function gat --wraps='git add . && git status' --description 'alias gat=git add . && git status'
  git add . && git status $argv
        
end
