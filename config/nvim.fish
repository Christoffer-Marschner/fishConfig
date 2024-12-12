
#if nvim not installed throw message
if not type -q nvim
  echo -e '\033[31m! nvim not executable !\033[39m'
  set -f not_ready
end

#return if nvim not configured correctly yet
if set -q not_ready
  set -e not_ready
  return
end

#start nvims file explorer in current directory
abbr --add n 'nvim .'

echo "nvim loaded"

