applets="openrgb firewall-applet"
for i in $applets
    do if [[ $(pgrep $i) != 1 ]];
        then killall $i
    fi
done