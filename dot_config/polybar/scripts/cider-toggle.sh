cider_run = ($pgrep -x cider)
cider_bar_run = ($pgrep -x cider-polybar)

if [ cider_run == 0 ] then
    if [cider_bar_run ! 0 ] then
        killall cider-polybar
    fi
    polybar-msg hide 


