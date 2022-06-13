function ls --wraps='exa -lhg --group-directories-first' --description 'alias ls exa -lhg --group-directories-first'
  exa -lhg --group-directories-first $argv; 
end
