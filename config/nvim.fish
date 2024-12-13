
#if nvim not installed throw message
if not type -q nvim
  status_echo -t error 'nvim not executable'
  set -f not_ready
end

#return if nvim not configured correctly yet
if set -q not_ready
  set -e not_ready
  return
end

#start nvims file explorer in current directory
abbr --add n 'nvim'

status_echo -t ok 'nvim loaded'

