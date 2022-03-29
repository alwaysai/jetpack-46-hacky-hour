device="dla"

if [[ !($1 = "") ]]
then

device=$1

fi

if [[ $device = "dla" ]]

then

export dev0_name="DLA 0"
export dev0_dir="15880000.nvdla0"
export dev1_name="DLA 1"
export dev1_dir="158c0000.nvdla1"
fi

echo $dev0_name
echo "Enabled: $(cat /sys/devices/platform/host1x/$dev0_dir/power/runtime_enabled)"
echo "Control: $(cat /sys/devices/platform/host1x/$dev0_dir/power/control)"
echo "Status: $(cat /sys/devices/platform/host1x/$dev0_dir/power/runtime_status)"
echo "Usage: $(cat /sys/devices/platform/host1x/$dev0_dir/power/runtime_usage)"

echo ""

echo $dev1_name
echo "Enabled: $(cat /sys/devices/platform/host1x/$dev1_dir/power/runtime_enabled)"
echo "Control: $(cat /sys/devices/platform/host1x/$dev1_dir/power/control)"
echo "Status: $(cat /sys/devices/platform/host1x/$dev1_dir/power/runtime_status)"
echo "Usage: $(cat /sys/devices/platform/host1x/$dev1_dir/power/runtime_usage)"
