# Keybindings
import os
from libqtile.config import Key, KeyChord
from libqtile.lazy import lazy

mod='mod1'
alt='mod4'
home = os.path.expanduser('~'),
myTerm = "alacritty",
myIDE = "vscodium",
myBrowser = "brave",
myFM = "thunar",

keys = [
    # QTILE control
    Key([mod, alt],"q", lazy.shutdown()),
    Key([mod, alt],"t", lazy.reload_config()),
    Key([mod, alt],"r", lazy.restart()),

    # Application Control
    Key([mod],"space", lazy.spawncmd()),
    Key([mod],"return", lazy.spawm(myTerm)),
    Key([mod],"q", lazy.window.kill()),
    Key([mod],"e", lazy.spawn(myFM)),
    Key([mod],"c", lazy.spawn(myIDE)),
    Key([mod],"b", lazy.spawn(myBrowser)),

    # Media Control
        # To-Do: Implement PlayerCTL helper
    Key([],"XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume 0 +5")),
    Key([],"XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume 0 -5")),
    Key([],"XF86AudioMute", lazy.spawn("pactl set-sink-mute 0 toggle")),
]