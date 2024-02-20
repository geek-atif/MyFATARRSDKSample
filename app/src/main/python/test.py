import scapy.all as scapy
from scapy.all import conf
import socket


def getIps():
	print('getIps called')
	router_ip = conf.route.route("0.0.0.0")[2]
	request = scapy.ARP()
	request.pdst = router_ip + '/24'
	broadcast = scapy.Ether()
	broadcast.dst = 'ff:ff:ff:ff:ff:ff'
	request_broadcast = broadcast/request
	clients = scapy.srp(request_broadcast, timeout=1)[0]
	ip_list = []
	for element in clients:
		hostname = ''
		try:
			hostname = socket.gethostbyaddr(element[1].psrc)[0]
		except:
			pass
		ip_list.append((element[1].psrc,element[1].hwsrc, hostname))
		# print(element[1].psrc + "      " + element[1].hwsrc)
	#print(ip_list)
	return(ip_list)
	
#print(getIps())