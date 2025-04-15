​The Security Technical Implementation Guide (STIG) finding WN10-CC-000295 says that attachments must be prevented from being downloaded from RSS feeds. 
This control is designed to enhance system security by mitigating potential risks associated with downloading enclosures (attachments) from RSS feeds.

1. In your VM in the search bar type in gpedit.msc or group policy editor 

2. Computer Configuration > Administrative Templates > Windows Components > RSS Feeds

3. Double-click on "Prevent downloading of enclosures

4. Set the policy to enabled. 5. Click apply 

________

Remediating STIG WN10-CC-000295 using powershell: 
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds"
$valueName = "DisableEnclosureDownload"
$valueData = 1

# Create the registry path if it doesn't exist
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the registry value
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type DWord

Write-Host "Successfully configured: Attachments from RSS feeds will not be downloaded."
