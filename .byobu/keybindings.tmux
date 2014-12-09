unbind-key -n C-a
unbind-key -n C-s
set -g prefix ^S
set -g prefix2 ^S
bind s send-prefix
unbind-key -n F2
bind-key -n F2 display-panes \; new-window -c "#{pane_current_path}" -n -
unbind-key -n C-F2
bind-key -n C-F2 display-panes \; split-window -hc "#{pane_current_path}"
unbind-key -n  S-F2
bind-key -n S-F2 display-panes \; split-window -vc "#{pane_current_path}"
unbind-key %
bind-key % display-panes \; split-window -hc "#{pane_current_path}"
unbind-key |
bind-key | display-panes \; split-window -vc "#{pane_current_path}"

