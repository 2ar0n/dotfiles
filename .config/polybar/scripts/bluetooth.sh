#!/bin/sh

cmd_out=$(bluetooth | grep on)

if [ -z "$cmd_out" ]; then
    echo "📴"
else
    echo "📱"
fi
