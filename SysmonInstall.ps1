New-Item -Path 'C:\Eriscert' -ItemType Directory -Force
Invoke-WebRequest -Uri https://download.sysinternals.com/files/Sysmon.zip -OutFile c:\Eriscert\Sysmon.zip
Expand-Archive -LiteralPath c:\Eriscert\Sysmon.zip -DestinationPath C:\Eriscert\Sysmon -Force
Invoke-WebRequest -Uri https://raw.githubusercontent.com/SwiftOnSecurity/sysmon-config/master/sysmonconfig-export.xml -OutFile c:\Eriscert\sysmonconfig-export.xml
c:\Eriscert\Sysmon\sysmon64.exe -accepteula -i c:\Eriscert\sysmonconfig-export.xml