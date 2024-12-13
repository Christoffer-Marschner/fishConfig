
function source_config_single
  #source the specified config in argv
  source $(string join "/" $config_path $argv)
end
functions -e source_config_single 

#MAIN FUNCTION
function source_config
  #set the config path
  set -f config_path $HOME/.config/fish/config

  #get the arguments
  argparse t/type= -- $argv

  #check which source type to run
  switch _flag_type
    case single
        source_config_single $_flag_type
    case "*"
      echo -e "\e[31minvalid type\e[39m"
  end
end

