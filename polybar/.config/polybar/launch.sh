#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log &
disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log &
disown
polybar bar3 2>&1 | tee -a /tmp/polybar3.log &
disown
polybar bar4 2>&1 | tee -a /tmp/polybar4.log &
disown

echo "Polybars launch"
