
#MAIN FUNCTION
function source_config
  #set the config path
  set -f config_path $HOME/.config/fish/config/

  #get the arguments
  argparse t/type= -- $argv

  #check which source type to run
  switch $_flag_type
    case a all
      set -f files_to_source $(string split -f1 '.' $(string split -m1 -r -f2 '/' $(fd -g -tf '*.fish' $config_path) ) )
    case list
      set -f files_to_source $argv
    case single
      set -f files_to_source $argv[1]
    case *
      status_echo -t error 'invalid type'
  end

  #source all files in array
  for file in $files_to_source
    source $(string join '' $config_path $file '.fish')
  end
end

