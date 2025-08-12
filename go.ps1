# Pesan awal
Write-Host "Heyy Zal"

# get the paw (secure)
$a1 = Read-Host "Give me your authentication" -AsSecureString
$a2 = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($a1)
$a3 = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($a2)

# obfuscate Base64 (exp 12345 -> MTIzNDU=)
$p1 = "RGlueWFsYWlubm4=" #here
$p2 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($p1))

# main URL Base64
$u1 = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JpemxtYXVsYW5hYS96YWxhY3QvcmVmcy9oZWFkcy9tYWluL3NjcmlwdC5wczE=" #"aHR0cHM6Ly9nZXQuYWN0aXZhdGVkLndpbg==" 
$u2 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($u1))

# pw checkers
if ($a3 -eq $p2) {
    iex (irm $u2)
    #exit
} else {
    Write-Host "NO YOU ARE NOT ZAL"
    exit
}
