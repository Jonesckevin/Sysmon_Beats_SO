## Sysmon / Beats / Security Onion / Optional Splunk 

### File List:
||- Version - |
|:--|:-:|
|[Sysmon](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon) | 13.30 | 
|[WinLogBeats](https://www.elastic.co/downloads/beats/winlogbeat) | 7.13.4 | 
|[Security Onion](https://github.com/Security-Onion-Solutions/securityonion/blob/master/VERIFY_ISO.md) | 2.3.90 |
|Splunk | TBC  |

### Sysmon File List:
| |SySmon Files||FileBeats||Security Onion|
| :-:|:--|---|--:|---|:--|---|
|1|Eula.txt|8C24C4084CDC3B7E7F7A88444A012BFC|Beats.ico|FFAEBDCC60F5304ADDB3345C031395CC|[Get your ISO](https://github.com/Security-Onion-Solutions/securityonion/blob/master/VERIFY_ISO.md)|
|2|README.MD|531D79182DB5CA07FD629A34DABB20F5|fields.yml|B8EE607D37CF31831A90737D9B14E4CE||
|3|SysConfig-Swift-Blank.xml|999DCEB48FDD3B9EB23B576EC658B42D|install-service-winlogbeat.ps1|DF79E0244389CEFF097963269B2CD5C4||
|4|SysConfig.xml|D29A088C610A7E9308F7530A098923B2|LICENSE.txt|3B83EF96387F14655FC854DDC3C6BD57||
|5|Sysmon.exe|0D04993D05CBFB94663340C0C2E5CC06|NOTICE.txt|31E9D83EEDCEFCF654342D81CB55E8B6||
|6|Sysmon64.exe|59F94EAAF3AE40B33FEAD8BABE81DF54|README.md|FE3DA1D7F2E03685233389E84E99E16A||
|7|SysMonIcon.ico|115A62947CDEFFDC558C2C7D2AA4E633|uninstall-service-winlogbeat.ps1|134DAF46BAE1D2DCA68347E8C66A97A1||
|8|||winlogbeat.exe|BEDAE75119C2F8CA55C93E73AA85E9F3|
|9|||winlogbeat.reference.yml|318BF87FD4C906A1C9BBB8B0650C1455|
|10|||winlogbeat.yml|E2C4B240E68CB225E78EEDB3BA919A70|

### Instructions To Install
**Step 1:** Get Admin Credentials

**Step 2:** Open Powershell.exe or cmd.exe in Admin Form

**Step 3:** Navigate to c:\windows\sysmon\ (Because you probably put the folder there)

**Step 4:** Lets install and set the config on a basic level using those red code blocks

`sysmon64.exe -i --accepteula`<----------------> **i** is for Install

`sysmon64.exe -c c:\windows\config.xml`<----> **c** is for config

`sysmon64.exe -c` <----------------------------------> This will show you the enabled config

`sysmon -c --` <--------------------------------------> **-- is to clear config**

`sysmon -s`  <------------------------------------------> **s is to show the config schema**

`sysmon64.exe -u force` <-------------------------> **u** is for uninstalling


### References:
- [Config Data 1 - GitHub - SwiftOnSecurity](https://github.com/SwiftOnSecurity/sysmon-config "Too Big......")
- [Config Data 3 - Github - olafhartong](https://github.com/olafhartong/sysmon-modular "It's Pronounced, M0dddular")
- [Config Data 2 - GitHub - Neo23x0](https://github.com/Jonesckevin/sysmon-config "This guy Sigma's")
- [Sysmon To Splunk Help](https://github.com/chrisdfir/sysmon2splunk "Hopefully Helps... Whelp")
- [Sysmon Documentation From Microsoft And Download](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon)
- [I Don't know you you are, but LogStash, Splunk, OSQuery Instructions - Full HTTPS](https://holdmybeersecurity.com/2021/04/07/ir-tales-the-quest-for-the-holy-siem-splunk-sysmon-osquery-zeek/ "HoldMyBeerSecurity")