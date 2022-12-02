#!/bin/bash
if [ -z "$(ls -A ~/.var/app/$FLATPAK_ID/data/gamedata/)" ];then
	unzip /app/extra/gamedata.zip -d ~/.var/app/$FLATPAK_ID/data/gamedata/
	mv ~/.var/app/$FLATPAK_ID/data/gamedata/*/* ~/.var/app/$FLATPAK_ID/data/gamedata/
fi
/app/bin/alephone ~/.var/app/$FLATPAK_ID/data/gamedata/
#/app/bin/alephone /app/game-data

