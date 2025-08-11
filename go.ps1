Write-Host "Hai Zal"
$securePw = Read-Host "Berikan passwordmu" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePw)
$pw = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

# Ganti '12345' dengan password kamu
if ($pw -eq "Itsz") {
    irm https://get.activated.win | iex
} else {
    Write-Host "Password salah."
}
