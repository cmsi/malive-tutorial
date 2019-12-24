#!/bin/sh

LANG=C LC_ALL=C sed -i '' s'|/Registry (Adobe) /Ordering (Japan1) /Supplement [0-9]|/Registry(Adobe) /Ordering(Identity) /Supplement 0|g' setup.pdf
