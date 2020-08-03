#!/bin/sh

cd /data
lgogdownloader --login
lgogdownloader --list > games.json
