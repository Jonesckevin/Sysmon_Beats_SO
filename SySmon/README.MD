## Sysmon / Beats / Security Onion / Optional Splunk 

### File List:
||- Version - |
|:--|:-:|
|[Sysmon](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon) | 13.30 | 
|[WinLogBeats](https://www.elastic.co/downloads/beats/winlogbeat) | 7.13.4 | 
|[Security Onion](https://github.com/Security-Onion-Solutions/securityonion/blob/master/VERIFY_ISO.md) | 2.3.90 |
|Splunk | TBC  |

### File List:
| || Hash |
| :--|:--|--:|
|1|Eula.txt (For sysmon) | 1 | 
|2|README.MD  | 1 |  
|3|SysConfig.xml  | 1 |  
|4|SysConfig-Swift-Blank.xml  | 1 |  
|5|Sysmon.exe  | 1 |  
|6|Sysmon64.exe  | 1 |  
|7|SysMonIcon.ico  | 1 | 

### Instructions To Install
**Step 1:** Get Admin Credentials

**Step 2:** Open Powershell.exe or cmd.exe in Admin Form

**Step 3:** Navigate to c:\windows\sysmon\ (Because you probably put the folder there)

**Step 4:** Lets install and set the config on a basic level using those red code blocks

`sysmon64.exe -i --accepteula`<------------->          **i** is for Install

`sysmon64.exe -c c:\windows\config.xml`<---> **c** is for config

`sysmon64.exe -c` <--------------------------> This will show you the enabled config

`sysmon -c --` <--------------------------> **-- is to clear config**

`sysmon -s`  <--------------------------> **s is to show the config schema**

`sysmon64.exe -u force` <--------------------------> **u** is for uninstalling


### References:
- [Config Data 1 - GitHub - SwiftOnSecurity](https://github.com/SwiftOnSecurity/sysmon-config "Too Big......")
- [Config Data 3 - Github - olafhartong](https://github.com/olafhartong/sysmon-modular "It's Pronounced, M0dddular")
- [Config Data 2 - GitHub - Neo23x0](https://github.com/Jonesckevin/sysmon-config "This guy Sigma's")
- [Sysmon To Splunk Help](https://github.com/chrisdfir/sysmon2splunk "Hopefully Helps... Whelp")
- [Sysmon Documentation From Microsoft And Download](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon)
- [I Don't know you you are, but LogStash, Splunk, OSQuery Instructions - Full HTTPS](https://holdmybeersecurity.com/2021/04/07/ir-tales-the-quest-for-the-holy-siem-splunk-sysmon-osquery-zeek/ "HoldMyBeerSecurity")