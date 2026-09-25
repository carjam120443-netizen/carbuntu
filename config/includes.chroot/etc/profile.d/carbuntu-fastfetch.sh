#!/usr/bin/env bash

if command -v fastfetch >/dev/null 2>&1 && [[ $- == *i* ]]; then
  fastfetch --config /usr/share/carbuntu/fastfetch/config.jsonc
fi
