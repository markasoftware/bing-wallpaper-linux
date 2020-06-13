#!/bin/sh

rssdata=$(curl "https://www.bing.com/HPImageArchive.aspx?format=rss&n=1")
title=$( \
echo "$rssdata" \
| xmllint --xpath "/rss/channel/item/title/text()" - \
| fmt -50
)
title=${title% \(*}
urlpath=$( \
echo "$rssdata" \
| xmllint --xpath "/rss/channel/item/link/text()" - \
| sed 's/1366x768/1920x1080/g' \
)
curl -o /tmp/bing-wallpaper-tmp.jpg "https://www.bing.com$urlpath"
convert /tmp/bing-wallpaper-tmp.jpg \
	-gravity southeast -fill white -pointsize 32 \
	-stroke '#222' -strokewidth 0.5 -annotate +20+20 "$title" \
	/tmp/bing-wallpaper-tmp.jpg
gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri file:///tmp/bing-wallpaper-tmp.jpg
gsettings set org.gnome.desktop.background draw-background true

