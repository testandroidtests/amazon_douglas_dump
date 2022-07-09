#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:9299968:cd0e31eb0ac2c14441c51aad08c32636c4a5d5ae; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8689664:24bb867f2fdb706316be3f98a9ef613dd424665f EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery cd0e31eb0ac2c14441c51aad08c32636c4a5d5ae 9299968 24bb867f2fdb706316be3f98a9ef613dd424665f:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
