function ll --wraps=ls --wraps='exa --long --header' --description 'alias ll=exa --long --header'
  exa --long --header $argv; 
end
