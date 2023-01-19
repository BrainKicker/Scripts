#!/bin/bash
snap list --all | awk '/désactivé|disabled/{print $1, $3}' | while read snapname revision; do sudo snap remove "$snapname" --revision="$revision"; done
