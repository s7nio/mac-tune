#!/usr/bin/env bash

gitConfigFile="$HOME/.gitconfig"
if [[ ! -f "$gitConfigFile" ]];
then
   echo "File $gitConfigFile does not exist. Please setup git."
   exit -1
else
   echo "File $gitConfigFile exist."
   githubUser=$(git config --global github.user)
   if [[ ! -n $githubUser ]];
   then
     echo "Missing 'github.user' configuration."
     exit -1
   else
     dir="$HOME/github"
     if [[ -d $dir ]];
     then
       echo "$dir already exist."
     else
       mkdir -p $dir
       echo "$dir created."
     fi
     cd $dir
     #https://gist.github.com/caniszczyk/3856584
     clone="curl -s https://api.github.com/users/$githubUser/repos?per_page=100 | python -c $'import json, sys, os\nfor repo in json.load(sys.stdin): os.system(\"git clone \" + repo[\"ssh_url\"])'"
     eval $clone
   fi
fi
echo "Done."
