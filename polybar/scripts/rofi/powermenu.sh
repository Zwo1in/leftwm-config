#!/bin/bash

update_prompt() {
  echo -en "\0message\x1f$@\n"
}

case "$@" in
  *Shutdown) systemctl poweroff; exit 0;
    ;;
  *Restart) systemctl reboot; exit 0;
    ;;
  *Lock) slock; exit 0;
    ;;
  *Sleep) systemctl suspend; exit 0;
    ;;
  *Logout) loginctl kill-session $XDG_SESSION_ID; exit 0;
    ;;
esac

echo "襤 Shutdown"
echo "菱 Restart"
echo " Lock"
echo "鈴 Sleep"
echo " Logout"

update_prompt "$(uptime -p)"

exit 0
