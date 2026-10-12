# Maintainer: smtdfc <me.smdtfc@gmail.com>
pkgname=bakeryos-libalpm-hooks
pkgver=1.0.0
pkgrel=1
pkgdesc="Custom libalpm hooks for BakeryOS"
url="https://github.com/bakeryos-project/bakeryos-libalpm-hooks"
arch=('any')
options=(!debug !strip)
license=("GPL-3.0-or-later")
depends=('pacman' 'libnotify')
source=()
sha256sums=()

package() {
    install -Dm644 "$srcdir/bakeryos-reboot-required.hook" "$pkgdir/usr/share/libalpm/hooks/bakeryos-reboot-required.hook"
    install -Dm755 "$srcdir/bakeryos-reboot-notify.sh"  "$pkgdir/usr/bin/bakeryos-reboot-notify"
    install -Dm644 "${startdir}/LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
