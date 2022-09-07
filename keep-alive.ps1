clear host
#
# Script to keep the PC alive, will prevent screen lock and sleep.
# Works by pressing Print Screen every 60 minutes, side effect is that a screenshot will overwrite the clipboard contents
#

write-warning "Your PC will not go to sleep whilst this window is open..."
Do {
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.SendKeys]::SendWait("{PRTSC}")

Start-Sleep -Seconds 120

} While ($true)