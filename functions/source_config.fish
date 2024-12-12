
function source_config
  set -f config_path $HOME/.config/fish/config
  source $(string join "/" $config_path "nvim.fish")
  #source config/source.fish
  #source conf.d/starship.fish
end

