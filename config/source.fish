
#source all .fish in config
abbr --add sol 'source_config -t list'
#sourcing all files at once
abbr --add so 'source_config -t all'

status_echo -t ok 'source loaded'

