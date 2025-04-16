WN10-SO-000070, which mandates that Windows 10 systems lock after 15 minutes of inactivity, you should configure the "Interactive logon: Machine inactivity limit" policy to 900 seconds (15 minutes). 
This setting ensures that unattended systems are automatically secured, reducing the risk of unauthorized access.

How to remediate WN10-SO-000070:
1. type in gpedit.msc in the search bar 

2. Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options

3. double-click on "Interactive logon: Machine inactivity limit"

4 set the value to 900 seconds 

5. Apply, then ok 
