#!/bin/bash
find -iname '*.po' | while read -r file
do
    msgmerge --update "$file" --backup=none --previous jellyfin_mpv_shim/messages/base.pot
done

