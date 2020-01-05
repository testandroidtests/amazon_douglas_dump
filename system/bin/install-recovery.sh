#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:9285632:d74ae0755baa44f9048df9c989ca91ebe56477d0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8677376:a59020d7a8a442263a284b0ccb51d2b6a9720516 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery d74ae0755baa44f9048df9c989ca91ebe56477d0 9285632 a59020d7a8a442263a284b0ccb51d2b6a9720516:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
