sudo service bluetooth stop
sudo killall pulseaudio
sudo service bluetooth start
sleep 5
sudo bluetoothctl << EOF
power on
connect B8:69:C2:EF:36:17
EOF
sleep 8
pacmd <<EOF
set-default-sink bluez_sink.B8_69_C2_EF_36_17
EOF
