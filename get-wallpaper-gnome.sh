#!/bin/sh

urlpath=$( \
curl "https://www.bing.com/HPImageArchive.aspx?format=rss&idx=0&n=1&mkt=en-US" \
| xmllint --xpath "/rss/channel/item/link/text()" - \
| sed 's/1366x768/1920x1080/g' \
)
curl -o /tmp/bing-wallpaper-tmp.jpg "https://www.bing.com$urlpath"
gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri file:///tmp/bing-wallpaper-tmp.jpg
gsettings set org.gnome.desktop.background draw-background true

