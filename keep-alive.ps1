# Rainbow colors for text
$colors = "Red", "Yellow", "Green", "Cyan", "Blue", "Magenta"
$text = "Made By nerodtm"

# Loop through the text and apply rainbow colors
for ($i = 0; $i -lt $text.Length; $i++) {
    $color = $colors[$i % $colors.Length]
    $char = $text[$i]
    Write-Host -NoNewline -ForegroundColor $color $char
}
Write-Host

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
