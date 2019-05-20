#LegionOS
for device in $(curl -s https://raw.githubusercontent.com/legionRom/platform_vendor_legion/pie/legion.devices); do
add_lunch_combo legion_$device-userdebug
done
