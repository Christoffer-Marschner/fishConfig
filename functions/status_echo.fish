
function return_color
  #write chosen color to stdout
  switch $argv
    case ok
      echo '\e[38;5;82m'
    case error
      echo '\e[48;5;203;38;5;232m'
    case warning
      echo '\e[38;5;226;4m'
    case message
      echo '\e[38;5;45m'
    case *
      echo '\e[0m'
  end
end

function status_echo
  #get arguments
  argparse t/type= n/no_newline -- $argv

  #set no newline flag variable if no newline requested
  if set -q _flag_no_newline
    set -f no_newline -n
  end

  #choose color based on status type
  set -f color (return_color $_flag_type)

  #print the string and clear color afterwards
  echo -e $no_newline $(string join "" $color $argv "\e[0m")

end

