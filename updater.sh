#! /bin/bash
date
apt-get update && apt-get -y dist-upgrade
apt-get autoremove -y
