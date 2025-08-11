Write-Host "Hey Zal, How are yo"
$pw = Read-Host "Prove Youre Zal"

if ($pw -eq "Itsz") {
    irm https://get.activated.win | iex
} else {
    Write-Host "NO YOU ARE NOTT!!! WRONG PASSWORD."
}
