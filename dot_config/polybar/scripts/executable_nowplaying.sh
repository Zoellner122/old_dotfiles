now_playing() {
    spotify=$(playerctl -p spotify status)
    cider=$(playerctl -p cider status)
    if [ $spotify == "Playing" ]
        then
            now_playing=$(playerctl -p spotify metadata --format "{{ artist }} - {{ title }}")
            echo "%{F#1db954}%{T1}阮 %{T-}%{F-} %{T1}$now_playing%{T-}"
    elif [ $cider == "Playing" ] 
        then
            now_playing=$(playerctl -p cider metadata --format "{{ artist }} - {{ title }}")
            echo "%{T1}%{F#fc3c44}%{T-}%{F-} %{T1}$now_playing%{T-}"
    else
        echo "%{T1} Nothing is playing%{T-}"
    fi
}

now_playing 2>/dev/null