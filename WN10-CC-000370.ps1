WN10-CC-000370 is a Windows 10 STIG that requires:

“Windows PowerShell 2.0 must be installed with the Optional Features method or removed

PowerShell 2.0 is very outdated and insecure. It lacks modern security logging and supports older, more easily exploited functionality.

Steps i did to remediate this Windows 10 STIG manually: 

1. gpedit.msc

2. Computer Configuration > Administrative Templates > System > Logon

3. Turn on convenience PIN sign-in
    Set it to: disabled 
    Click apply, then ok 
4. Restart VM

Or Using the Powershell ICE (administrator) method 

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "AllowDomainPINLogon" -Value 0 -Type DWord

Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "AllowDomainPINLogon"

It should return:
AllowDomainPINLogon : 0



