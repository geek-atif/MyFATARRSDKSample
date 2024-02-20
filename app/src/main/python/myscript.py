import time
import nmap
import getmac
from scapy.all import sr1
from scapy.layers.inet import IP, ICMP

print("network_ip_list")

def getMacAddress(deviceIp):
	return getmac.get_mac_address(ip=deviceIp)


def os_detection(ip):
    '''layouer 3 scapy os detection'''
    pack = IP(dst=ip) / ICMP()
    resp = sr1(pack, timeout=2, verbose=False)
    if resp is None:
        print('no response')
    elif IP in resp:
        if resp.getlayer(IP).ttl <= 64:
            os = 'Linux'
        else:
            os = 'Windows'
        # print('ttl size: ', resp.getlayer(IP).ttl, '\nOS: ', os)
    return os

#print(getMacAddress('192.168.1.4'))

def network_ip_list(sorted, routerip, nm):
    print("network_ip_list")
    nm.scan(hosts=str(routerip) + '/24', arguments='-sP')
    # hosts_list = [(x, nm[x]['status']['state']) for x in nm.all_hosts()]
    hosts_list = [x for x in nm.all_hosts()]
    # hosts_list.remove(routerip)
    if not sorted:
        return hosts_list

    hosts_list_filtered = {}
    endpoint_list = []
    server_list = []
    # if machine_type == 'endpoint':
    for ip in hosts_list:
        a = nm.scan(hosts=str(ip), arguments='-p 80,8080,443,8000 --open -T4')
        if a['scan'] == {}:
            endpoint_list.append(ip)

    hosts_list_filtered['endpoints'] = endpoint_list
    # elif machine_type == 'server':
    # for ip in hosts_list:
    # a = nm.scan(hosts=str(ip), arguments='-p 80,8080,443,8000 --open -T4')
    # if a['scan'] != {}:
    # server_list.append(ip)
    # hosts_list_filtered['servers'] = server_list
    print(hosts_list_filtered)
    return hosts_list_filtered




def endpoint_attacks(router_ip):
    print('Endpoint scans...')
    nm = nmap.PortScanner()
    endpoint_list = network_ip_list(False, router_ip , nm)
    print( endpoint_list)
    #endpoint_list = ['192.168.1.12', '192.168.1.2', '192.168.1.4', '192.168.1.5', '192.168.1.8']
    inventory_dict = {}

    for ip in endpoint_list:
        mIp = str(ip)
        print('ip : ' + mIp)
        scan_res = nm.scan(hosts=str(mIp), arguments='-O -sV --open')
        if 'scan' in scan_res.keys() and str(ip) in scan_res['scan'].keys():
            scan = scan_res['scan'][str(ip)]
            temp = {}
            if 'osmatch' in scan.keys() and scan['osmatch'] != []:
                temp['os'] = scan['osmatch']
            
            inventory_dict[str(ip)] = temp

            print("-----------------------------------")
            print(ip, ': ')
            for key, value in inventory_dict[str(ip)].items():
                if key == 'os':
                    print(key, ': ')
                    print('     ', 'name: ', value[0]['name'])

    return inventory_dict
	


#router_ip = get_router_ip()
#print(router_ip)
#print(endpoint_attacks(router_ip))
