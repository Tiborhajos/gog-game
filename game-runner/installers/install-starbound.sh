#!bin/sh

mkdir -p /data/starbound/data/noarch/game/linux
cd starbound
unzip starbound*.sh; # todo: will break when there are multiple versions of the game.
chmod -R 777 /data/starbound/data/noarch/game/linux # todo: find better solution or downtune 777 a bit.
cp starters/start-starbound.sh /data/starbound/data/noarch/game/linux
sh /data/starbound/data/noarch/game/linux/start-starbound.sh
