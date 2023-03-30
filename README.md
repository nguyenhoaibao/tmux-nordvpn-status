# tmux-nordvpn-status

tmux plugin to show if NordVPN is connected

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add the plugin to your `.tmux.conf`:

```
set -g @plugin 'nguyenhoaibao/tmux-nordvpn-status'
```

Hit `prefix + I` to download the plugin and source it.

Configure
---------

Set in your `status-left` or `status-right` and add:

```
#{vpn_status}
```

References
----------
- https://github.com/nocode99/tmux-vpn-status
