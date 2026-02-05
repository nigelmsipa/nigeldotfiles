#!/bin/bash
# Wako - Quote notifier
# Shows quotes at fixed intervals

QUOTES_FILE="$HOME/.config/scripts/quotes.txt"
INTERVAL=2700  # 45 minutes in seconds

# Show one immediately on startup/unlock
sleep 5  # small delay to let notification daemon start
quote=$(shuf -n 1 "$QUOTES_FILE")
notify-send -a "Wako" -t 20000 "Wako" "$quote"

# Then continue with regular intervals
while true; do
    sleep $INTERVAL
    quote=$(shuf -n 1 "$QUOTES_FILE")
    notify-send -a "Wako" -t 20000 "Wako" "$quote"
done
