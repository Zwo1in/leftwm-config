#!/bin/bash
set -Eeu

logo=

source /etc/os-release
case "${ID:-}" in
  *alpine*) logo=
    ;;
  *arch*) logo=
    ;;
  *centos*) logo=
    ;;
  *debian*) logo=
    ;;
  *elementary*) logo=
    ;;
  *fedora*) logo=
    ;;
  *gentoo*) logo=
    ;;
  *manjaro*) logo=
    ;;
  *mint*) logo=
    ;;
  *nixos*) logo=
    ;;
  *opensuse*) logo=
    ;;
  *redhat*) logo=
    ;;
  *ubuntu*) logo=
    ;;
esac

kernel="$(uname -rn)"

echo '%{T2}'$logo'%{T1}%{O8pt}'$kernel
