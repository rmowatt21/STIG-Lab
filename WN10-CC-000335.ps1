​The STIG finding WN10-CC-000335 mandates that Windows Remote Management (WinRM) clients must not allow unencrypted traffic. 
This ensures that all remote management communications are encrypted, safeguarding sensitive information from potential interception

WinRM is a Windows feature that facilitates remote management tasks. 
If unencrypted traffic is permitted, it poses a security risk as data transmitted over the network could be intercepted or tampered with.
Therefore, it's crucial to configure WinRM to only allow encrypted communications.

How to remediate the STIG WN10-CC-000335:

1. type in the search bar "gp" or gpedit.msc

2. Computer Configuration > Administrative Templates > Windows Components > Windows Remote Management (WinRM) > WinRM Client

3. Double-click on "Allow unencrypted traffic"

4. Set the policy to Disabled. then set "apply"
