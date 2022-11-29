function update --wraps='sudo apt update && sudo apt upgrade && sudo snap refresh' --description 'alias update=sudo apt update && sudo apt upgrade && sudo snap refresh'
  sudo apt update && sudo apt upgrade && sudo snap refresh $argv; 
end
