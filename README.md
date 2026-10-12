# bakeryos-libalpm-hooks

Custom pacman hooks for BakeryOS.

## Hooks

| Hook | What it does | Files |
|------|--------------|-------|
| `bakeryos-reboot-required` | Shows a "restart required" notice when core packages (kernel, systemd, nvidia, mesa, gnome, gdm, bakeryos-*) are updated | `src/bakeryos-reboot-required.hook`, `src/bakeryos-reboot-notify.sh` |

## License

GPL-3.0-or-later. See `LICENSE`.
