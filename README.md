# Privatni repo sa nmap pripremom

## Instalacija (Zahtijeva instaliran docker compose koji je obicno dio Docker desktop instalacije)

```
docker-compose up
```

ili 

```
docker compose up
```


Koristiti opciju ```-d``` za startovanje u pozadini.

Prvi put komanda zahtijeva vremena, posto priprema Kali Linux distribuciju. Poslije prvog uspijesnog starta, sledeci pozivi su brzi posto je neophodni Docker image vec na lokalnoj masini.


Pogledati trenutne kontejnere koji su aktivni (primjer komande):

```
docker ps
CONTAINER ID   IMAGE            COMMAND                  CREATED         STATUS         PORTS                     NAMES
f9556d98e623   netsniff-flask   "/bin/sh -c 'python …"   8 seconds ago   Up 7 seconds   0.0.0.0:5100->5000/tcp    netsniff-flask-1
5487874b2f9d   netsniff-udp     "/bin/sh -c 'python …"   8 seconds ago   Up 7 seconds   0.0.0.0:5101->20001/tcp   netsniff-udp-1
9672acf96bb9   netsniff-kali    "bash"                   8 seconds ago   Up 7 seconds   0.0.0.0:5102->20001/tcp   netsniff-kali-1
```

Pristupiti kontejneru (primjer komande):

```
docker container exec -it netsniff-kali-1 /bin/bash
```

Za lakse rukovanje, sledece skripte olaksavaju interakciju sa servisima.

```./start.sh``` startovanje servisa (```./start.sh -d``` za startovanje u pozadini)
```./stop.sh``` zaustavljanje servisa
```./attach_to_kali.sh``` konektovanje na Kali linux konzolu gdje je nmap instaliran.



Skeniranje subneta (primjer komande):

```
┌──(root㉿9672acf96bb9)-[/code]
└─# nmap 172.18.0.0/24
Starting Nmap 7.93 ( https://nmap.org ) at 2023-02-02 13:04 UTC
Nmap scan report for rtp5-lab-gw1-ten5-12.cisco.com (172.18.0.1)
Host is up (0.0000060s latency).
Not shown: 998 closed tcp ports (reset)
PORT     STATE SERVICE
111/tcp  open  rpcbind
5100/tcp open  admd
MAC Address: 02:42:BC:B9:B9:34 (Unknown)

Nmap scan report for netsniff-udp-1.netsniff_my_network (172.18.0.3)
Host is up (0.0000080s latency).
All 1000 scanned ports on netsniff-udp-1.netsniff_my_network (172.18.0.3) are in ignored states.
Not shown: 1000 closed tcp ports (reset)
MAC Address: 02:42:AC:12:00:03 (Unknown)

Nmap scan report for netsniff-flask-1.netsniff_my_network (172.18.0.4)
Host is up (0.0000080s latency).
Not shown: 999 closed tcp ports (reset)
PORT     STATE SERVICE
5000/tcp open  upnp
MAC Address: 02:42:AC:12:00:04 (Unknown)

Nmap scan report for 9672acf96bb9 (172.18.0.2)
Host is up (0.0000040s latency).
All 1000 scanned ports on 9672acf96bb9 (172.18.0.2) are in ignored states.
Not shown: 1000 closed tcp ports (reset)

Nmap done: 256 IP addresses (4 hosts up) scanned in 2.20 seconds
```


Na primjeru iznad, nmap skenira /24 subnet i nalazi 2 hosta (i na jednom od njih je aktivan servis) 172.18.0.3 i 172.18.0.4.


