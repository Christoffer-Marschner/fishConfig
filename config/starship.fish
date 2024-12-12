
echo starship

set -f starship_config_path $HOME/.config/starship/starship.toml

#if starship config is not at location
if not test -e $starship_config_path
  echo -e "\033[31m! no config foung at .config/starship/starship.toml !\033[39m"
  set -f not_ready 
end

#if starship not installed
if not type -q starship
  echo -e "\033[31m! starship not executable !\033[39m"
  set -f not_ready 
end

#if starship not configured yet reuturn
if set -q not_ready
  set -e not_ready
  return
end

#set environment variable for starship config location
set -Ux STARSHIP_CONFIG $starship_config_path

#start starship
starship init fish | source

