WN10-AU-000565 - Windows 10 must be configured to audit other Logon/Logoff Events Failures.

The "Audit Other Logon/Logoff Events" policy monitors specific user activities, including:​

Remote Desktop session connections and disconnections
Workstation lock and unlock events
Screen saver activations and dismissals
Credential delegation failures​

Remediation steps:
1. gpedit.msc 

2. Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > Logon/Logoff

3. Double-click on "Audit Other Logon/Logoff Events. 4. Check the box "failure"

Remediation using powershell:

AuditPol /set /subcategory:"Other Logon/Logoff Events" /failure:enable


