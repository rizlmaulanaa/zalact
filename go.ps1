Write-Host "Heyy Zal"
$securePw = Read-Host "Give me your authentication" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePw)
$pw = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

# obfuscate Base64
$encodedPw = "SXRzeg=="
$decodedPw = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($encodedPw))

if ($pw -eq $decodedPw) {
    irm https://get.activated.win | iex
} else {
    Write-Host "NO YOU ARE NOT ZAL"
}
