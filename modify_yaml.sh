for iface in $(ip -o link show | awk -F': ' '/link\/ether/ {print $2}'); do 
  if [[ -f /sys/class/net/$iface/carrier ]] && [[ $(cat /sys/class/net/$iface/carrier) -eq 1 ]]; then 
    mac_address=$(ip link show "$iface" | awk '/link\/ether/ {print $2}') 
    break 
  fi 
done 
arch="/etc/netplan/20_perso_loyola.yaml" 
cont="network: 
ethernets: 
  myinterface: 
  	match: 
			macaddress: $mac_address 
  	set-name: NetName 
		dhcp4: true 
		wakeonlan: on" 
echo "$cont" > $arch 
echo "file $arch created" 
