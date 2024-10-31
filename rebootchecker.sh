#!/bin/sh -e
#
# helper for update-motd

if [ -f /var/run/reboot-required ]; then
      reboot
fi