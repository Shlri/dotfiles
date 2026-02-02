#!/bin/bash
eww reload

makoctl reload

pkill -USR1 kitty 2>/dev/null
