#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="manjaro"
iso_label="MANJARO_RECOVERY_$(date +%Y%m)"
iso_publisher="Manjaro <https://manjaro.org>"
iso_application="Manjaro Recovery Media"
iso_version=$(date +%Y.%m.%d)
install_dir="manjaro"
buildmodes=('iso')
bootmodes=('uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/install.sh"]="0:0:755"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
