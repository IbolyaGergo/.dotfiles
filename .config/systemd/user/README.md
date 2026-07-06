# User Systemd Automation

## Template for new Timers

To add a new theme-switching task:

### 1. Create Service Unit (`<name>.service`)
```ini
[Unit]
Description=

[Service]
Type=oneshot
ExecStart=/path/to/script"
```

### 2. Create Timer Unit (`<name>.timer`)
```ini
[Unit]
Description=Run <name> at <Time>

[Timer]
OnCalendar=*-*-* HH:MM:SS
Persistent=true

[Install]
WantedBy=timers.target

```

### 3. Deploy

Run these commands to activate:

```bash
  systemctl --user daemon-reload
  systemctl --user enable --now <name>.timer
```

### 4. Verify

```bash
  systemctl --user list-timers

  # or run manually
  systemctl --user start <name>.service
```

### Disable and stop
```bash
    systemctl --user stop <name>.timer
    systemctl --user disable <name>.timer
```
