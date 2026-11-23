#!/usr/bin/env bash

cd ~/.local/share/Steam/steamapps/common/Deadlock/game/citadel
cp gameinfo.gi gameinfo.gi.bak && awk '/"r_aspectratio"/ {next} /ConVars/ {in_cv=1} in_cv && /\{/ && !done {print; print "\t\t\"r_aspectratio\" \"2.83\""; done=1; next} {print}' gameinfo.gi.bak > gameinfo.gi

#grep -A 8 "ConVars" gameinfo.gi
#        ConVars
#        {
#                "rate"
#                {
#                        "min"           "133120"
#                        "default"       "786432"
#                        "max"           "1000000"
#                }
#                "r_aspectratio" "2.83"

# equates to rougly 110 FOV.
