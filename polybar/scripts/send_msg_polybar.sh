#!/usr/bin/env bash

# Function to send message to Polybar using IPC
send_polybar_message() {
  # Replace "main" with the name of your Polybar bar
  POLYBAR_BAR="main"  # Change this to the correct bar name
  MESSAGE="$1"
  
  # Determine the IPC socket based on the available sockets in /run/user/1000/polybar/
  # You may need to adjust the logic here based on your specific setup
  if [[ -S "/run/user/1000/polybar/ipc.34131.sock" ]]; then
    IPC_SOCKET="/run/user/1000/polybar/ipc.34131.sock"
  elif [[ -S "/run/user/1000/polybar/$POLYBAR_BAR.2.ipc" ]]; then
    IPC_SOCKET="/run/user/1000/polybar/$POLYBAR_BAR.2.ipc"
  else
    echo "Error: IPC socket for Polybar bar '$POLYBAR_BAR' not found."
    exit 1
  fi

  echo "hook:polybar-$POLYBAR_BAR:$MESSAGE" | socat - UNIX-CONNECT:"$IPC_SOCKET"
}

# Example: Send a message to Polybar
send_polybar_message "Hello, Polybar!"

