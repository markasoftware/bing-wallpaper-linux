# Bing picture of the day wallpaper for linux
An ultra-simple, ultra-small shell script that, when run, sets the wallpaper to the current bing picture of the day.
## Which WMs/DEs are supported?
DEs without a wallpaper manager (e.g: i3, Openbox, XMonad, to name a few) are the only ones supported. However, if you 
can figure out how to disable the wallpaper manager in another DE, it should conceptually work
## Dependencies?
Feh, Curl, and Xmllint. Curl and Xmllint are included in most linux installations, so feh's probably the only one you 
have to worry about.
## How to use?
Just run the script to download the latest image and set it as background. You'll probably want to make it run at 
startup, or more often if you leave your computer on for more than a day regularly.
## How can I contribute?
You can help improve this script by making variants of it that work with different DEs, such as GNOME, KDE, xfce, etc. Pull requests welcome!
