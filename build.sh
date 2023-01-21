#!/usr/bin/env bash
# for a signed repo:
# $ GPGKEY=<gpg key id> ./build.sh
# for an unsigned repo:
# $ ./build.sh

if [[ $GPGKEY ]];then
	for x in {1..3};do
		flatpak-builder --gpg-sign=$GPGKEY --force-clean --repo=./.flatpakrepo .build$x ./org.lhowon.alephone.marathon$x.yml
	done
else
	for x in {1..3};do
		flatpak-builder --force-clean --repo=./.flatpakrepo .build$x ./org.lhowon.alephone.marathon$x.yml
	done
fi
