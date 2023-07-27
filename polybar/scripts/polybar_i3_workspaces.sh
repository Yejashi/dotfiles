#!/bin/sh

focused_ws_windows=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')
focused_ws_window_count=$(i3-msg -t get_tree | jq "[recurse(.nodes[]) | .nodes[] | .window_properties? | select(.class == \"i3bar\") | select(.instance == \"polybar\") | .window] | length")

if [[ $focused_ws_window_count -gt 1 ]]; then
    echo "F$focused_ws_windows"
else
    echo "$focused_ws_windows"
fi

