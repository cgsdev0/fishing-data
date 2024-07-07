#!/bin/bash

if [[ -f "badcop_/$2" ]]; then
  cat "badcop_/$1" >> "badcop_/$2"
  rm "badcop_/$1"
else
  mv "badcop_/$1" "badcop_/$2"
fi

if [[ ! -f "badcop_/fishing-rods/$2" ]]; then
  mv "badcop_/fishing-rods/$1" "badcop_/fishing-rods/$2"
else
  rm "badcop_/fishing-rods/$2"
fi
