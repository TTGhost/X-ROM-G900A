#!/sbin/sh
# Script by ALEXNDR to enable init.d in Samsung Qualcomm devices
# running KitKat stock kernel (thanks to shazzl & Ryuinferno @ XDA)

echo "#!/system/bin/sh" > /system/etc/init.d/96settings
echo "" >> /system/etc/init.d/96settings
echo "sh /system/etc/tools/runs.sh" >> /system/etc/init.d/96settings
echo "" >> /system/etc/init.d/96settings

chown 0:0 /system/etc/init.d
chmod 777 /system/etc/init.d
chcon u:object_r:system_file:s0 /system/etc/init.d

chown 0:0 /system/etc/init.d/*
chmod 777 /system/etc/init.d/*
chcon u:object_r:system_file:s0 /system/etc/init.d/*

chown 0:0 /system/etc/tools/*
chmod 777 /system/etc/tools/*
chcon u:object_r:system_file:s0 /system/etc/tools/*

sync
