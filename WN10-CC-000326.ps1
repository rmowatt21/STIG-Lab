<#
.SYNOPSIS
restricting anonymous access to named pipes and network shares. This stops unauthorized users (not logged in) from accessing your system over the network.

.NOTES
    Author          : Rashad Mowatt
    LinkedIn        : linkedin.com/in/rashad-mowatt-9b401899/
    GitHub          : github.com/rmowatt21
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000326

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000326).ps1 

# Define the registry path and the value
 C:\Users\azurelab> Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" -Name "EnableScriptBlockLogging" -Value 1 -Force

# Check if the registry key exists, if not, create it
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell" -Name "ScriptBlockLogging" -Force

Write-Host "Registry value set successfully"
