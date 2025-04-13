Unauthenticated RPC clients must be restricted from connecting to the RPC server. 
To prevent unknown or unauthenticated systems from connecting to your computer using Remote Procedure Call (RPC) — a Windows service that lets programs talk to each other across a network.

How to remediate WN10-CC-000165 in Powershell: 

PS C:\Users\azurelab> New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Rpc" -Name "RestrictRemoteClients" -PropertyType DWord -Value 1 -Force


Results: 

RestrictRemoteClients : 1
PSPath                : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Wi
                        ndows NT\Rpc
PSParentPath          : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Wi
                        ndows NT
PSChildName           : Rpc
PSDrive               : HKLM
PSProvider            : Microsoft.PowerShell.Core\Registry
