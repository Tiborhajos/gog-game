#!/bin/sh
# For some weird reason, the system does not recognise starbound-server. Made a script for it.

cd "$(dirname "$0")"

LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./ ./starbound_server
