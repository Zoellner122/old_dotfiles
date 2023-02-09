now_playing() {
    cmd="$(playerctl status -a --format '{{ playerName }}:{{ status }}' | grep Playing)"
    player="$(echo $cmd | cut -d ":" -f 1)"

    metadata="$(playerctl -p $player metadata --format "{{title}} - {{ artist }}" | sed 's/\(.\{25\}\).*/\1.../')"
    if [ $player == "spotify" ]
        then
            echo "%{F#1db954}%{T1}阮 %{T-}%{F-} %{T1}$metadata%{T-}"
    elif [ $player == "cider" ]
        then
            echo "%{T1}%{F#fc3c44}%{T-}%{F-} %{T1}$metadata%{T-}"
    elif [ $player == "chromium" ]
        then
            echo "%{T1} %{T-}%{T1}$metadata%{T-}"
    elif [ $player == "vlc"]
        then
            echo "%{T1}嗢 %{T-}%{T1}$metadata%{T-}"
    else
            echo "%{T1} Nothing is playing%{T-}"
    fi
}

now_playing 2>/dev/null
