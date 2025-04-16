WN10-UR-000030, ensure that only the Administrators group is assigned the "Back up files and directories" user right. 
This privilege allows users to bypass file and directory permissions to back up the system, so restricting it to administrators helps prevent unauthorized access to sensitive data

steps to remediate WN10-UR-000030: 

1.gpedit.msc

2. Computer Configuration > Windows Settings > Security Settings > Local Policies > User Rights Assignment

3. In the right pane, double-click on "Back up files and directories".

4. See if only Administrators is listed (if other accounts are listed, remove them)

5. Apply and restart VM

Alternative option:

1. Open Command prompt

2. type in- secedit /export /cfg C:\secpol.cfg
