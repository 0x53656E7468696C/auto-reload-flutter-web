
# Define pipe and web port
WEB_PORT=33333
PIPE="$HOME/flutter_reload_pipe"

# Cleanup function
cleanup() {
  echo "🚮  Cleaning up..."
  kill $FLUTTER_PID
  rm -f "$PIPE"
  echo "☠️  Flutter..."
  exit 0
}

# Trap Ctrl+C
trap cleanup SIGINT



# Create fresh pipe
rm -f "$PIPE"
mkfifo "$PIPE"

# Start Flutter in the background with the named pipe
flutter run -d web-server --web-port=$WEB_PORT < "$PIPE" &
FLUTTER_PID=$!

echo "  🕐Script Started💥..."

# This loop will trigger on every file change
while true; do
  find lib -type f -name "*.dart" | entr -d echo 'r' > "$PIPE"
done
