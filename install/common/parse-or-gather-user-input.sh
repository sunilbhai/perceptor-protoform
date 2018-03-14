#!/bin/bash
source `dirname ${BASH_SOURCE}`/args.sh "${@}"

function prompt() {
  if [[ $_arg_proto_prompt == "on" ]]; then
    clear
    echo "============================================"
    echo "Blackduck Hub Configuration Information"
    echo "============================================"
    echo "Interactive"
    echo "============================================"
    read -p "Hub server host (e.g. hub.mydomain.com:443): " _arg_hub_host_port
    read -p "Hub user name (e.g. blackduck): " _arg_hub_user
    read -sp "Hub user password : " _arg_hub_password
    echo " "
    read -p "Maximum concurrent scans: " _arg_hub_max_concurrent_scans
    echo "============================================"
  else
    echo "Skipping prompts, --proto_prompty was turned off."
  fi
}

prompt