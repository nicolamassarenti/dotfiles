function update --wraps='sudo apt update && sudo apt upgrade && sudo snap refresh' --wraps='sudo apt update && sudo apt upgrade -y && sudo snap refresh' --description 'alias update=sudo apt update && sudo apt upgrade -y && sudo snap refresh'
  sudo apt update && sudo apt upgrade -y && sudo snap refresh $argv; 
end
