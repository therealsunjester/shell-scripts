#!/usr/bin/env bash
#666
ifconfig -s|tail -1|cut -d' ' -f1
