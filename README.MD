## Sysmon / Beats / Security Onion / Optional Splunk 

### File List:
||- Version - |
|:--|:-:|
|[Sysmon](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon) | 13.30 | 
|[WinLogBeats](https://www.elastic.co/downloads/beats/winlogbeat) | 7.13.4 | 
|[Security Onion](https://github.com/Security-Onion-Solutions/securityonion/blob/master/VERIFY_ISO.md) | 2.3.90 |
|Splunk | TBC  |

---

### Instructions To Install
**Step 1:** Get Admin Credentials

**Step 2:** Open Powershell.exe or cmd.exe in Admin Form

**Step 3:** Navigate to c:\windows\sysmon\ (Because you probably put the folder there)

**Step 4:** Lets install and set the config on a basic level using those red code blocks

`sysmon64.exe -i --accepteula`<-------------> **i** is for Install

`sysmon64.exe -c c:\windows\config.xml`<----> **c** is for config

`sysmon64.exe -c` <-------------------------> This will show you the enabled config

`sysmon -c --` <----------------------------> **-- is to clear config**

`sysmon -s`  <------------------------------> **s is to show the config schema**

`sysmon64.exe -u force` <-------------------> **u** is for uninstalling

---

### Instructions To Linux HTTPS docker Elk-Stack
**Step 1:** Move elastic-docker folder onto desktop or prefferable area

**Step 2:** Open Terminal and navigate to elastic-docker directory

**Step 3:** From /elastic-docker, Within Intances.yml - change "external DNS name goes here" to your VM's gateway, which is fine for now. (Probably 192.168.1.1 - Shouldn't matter to much). As well change External IP to the Linux VM's Network adapter IP. Could be 192.168.200.45 or what ever it may be. (This matters a bit more) 

*Note: There should be two spots for each to change the IP*

**Step 4:** Run `sudo bash ../Linux_Elk_Docker_HTTPS_Install.sh`

**Step 5:** If everything is smooooooooth. You should see a list of usernames and passwords showup on screen near the end. It will yell that you have 120 seconds to sort yourself out. Take the kibana_system password and paste it in the `docker-compose.yml` from the elastic-docker directory. After the 120 seconds it will docker-compose up and should work.

---

### References:
- [Config Data 1 - GitHub - SwiftOnSecurity](https://github.com/SwiftOnSecurity/sysmon-config "Too Big......")
- [Config Data 3 - Github - olafhartong](https://github.com/olafhartong/sysmon-modular "It's Pronounced, M0dddular")
- [Config Data 2 - GitHub - Neo23x0](https://github.com/Jonesckevin/sysmon-config "This guy Sigma's")
- [Sysmon To Splunk Help](https://github.com/chrisdfir/sysmon2splunk "Hopefully Helps... Whelp")
- [Sysmon Documentation From Microsoft And Download](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon)
- [I Don't know you you are, but LogStash, Splunk, OSQuery Instructions - Full HTTPS](https://holdmybeersecurity.com/2021/04/07/ir-tales-the-quest-for-the-holy-siem-splunk-sysmon-osquery-zeek/ "HoldMyBeerSecurity")
