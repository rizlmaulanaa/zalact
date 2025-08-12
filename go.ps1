Write-Host "Heyy Zal"
# Prompt pw (hidden input)
$securePw = Read-Host "Give Me Your AUTHENTICATION" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePw)
$pw = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

# Ganti ini dengan password rahasia
$correctPw = "Dinyalainn"

if ($pw -eq $correctPw) {
    try {
        # Ambil script asli langsung dari sumber
        $url = "https://get.activated.win"
        $rawScript = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content

        # Encode ke Base64
        $bytes = [System.Text.Encoding]::Unicode.GetBytes($rawScript)
        $encoded = [Convert]::ToBase64String($bytes)

        # Decode dan jalankan
        $decodedBytes = [System.Convert]::FromBase64String($encoded)
        $decodedScript = [System.Text.Encoding]::Unicode.GetString($decodedBytes)
        Invoke-Expression $decodedScript
    }
    catch {
        Write-Host "Terjadi kesalahan saat menjalankan script." -ForegroundColor Red
    }
    finally {
        # Tutup PowerShell otomatis
        Start-Sleep -Seconds 2
        exit
    }
}
else {
    Write-Host "Password salah." -ForegroundColor Red
    Start-Sleep -Seconds 2
    exit
}
