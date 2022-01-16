## Zabbix openvpn service
- https://github.com/nikimaxim/zbx-openvpn.git

### Installing for linux
#### Requirements:
- OS: Linux
- Zabbix-agent: 4.0 and later
- Openvpn: 2.4 and later

#### Copy bash script:
- **github**/openvpn-discovery.sh in /opt/zabbix/openvpn-discovery.sh

#### Chmod and Chown
- chmod -R 750 /opt/zabbix/
- chown -R root:zabbix /opt/zabbix/
- chown root:zabbix /etc/openvpn/ipp.txt

#### Check bash script(Out json):
- /opt/zabbix/openvpn-discovery.sh

#### Add from zabbix_agentd.conf "UserParameter" in zabbix_agentd.conf:
- **github**/zabbix_agentd.conf

#### Import zabbix template:
- **github**/Template App OpenVPN Service.xml

<br/>

#### Examples images:
- Graph: Openvpn

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/6.png)

<br/>

- Items

<br/>

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/4.png)

<br/>

- Discovery rules

<br/>

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/1.png)

<br/>

- Items prototypes

<br/>

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/2.png)

- Graph prototypes

<br/>

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/3.png)

<br/>

- Latest data

<br/>

![Image alt](https://github.com/nikimaxim/zbx-openvpn/blob/main/img/5.png)

<br/>

#### License
- GPL v3