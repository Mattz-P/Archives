$server="52.198.186.250"
$name="AWS-LS-Tokyo"

certutil -f -importpfx ".\cert.p12" NoExport

# Create VPN connection (replace server address with your own value)
powershell -command "Add-VpnConnection -ServerAddress 52.198.186.250 -Name AWS-LS-Tokyo -TunnelType IKEv2 -AuthenticationMethod MachineCertificate -EncryptionLevel Required -PassThru"
# Set IPsec configuration
powershell -command "Set-VpnConnectionIPsecConfiguration -ConnectionName AWS-LS-Tokyo -AuthenticationTransformConstants GCMAES128 -CipherTransformConstants GCMAES128 -EncryptionMethod AES256 -IntegrityCheckMethod SHA256 -PfsGroup None -DHGroup Group14 -PassThru -Force"

# REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RasMan\Parameters /v NegotiateDH2048_AES256 /t REG_DWORD /d 0x1 /f

# SIG # Begin signature block
# MIIFxwYJKoZIhvcNAQcCoIIFuDCCBbQCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUOhx5GfTtPI6r5uOLwkkhp7SF
# YsmgggNEMIIDQDCCAiigAwIBAgIQZ3l3Hc49SZpLpqlhZJtuYzANBgkqhkiG9w0B
# AQsFADA4MQ4wDAYDVQQDDAVTdHVmZjEmMCQGCSqGSIb3DQEJARYXc2lnbmVkQHNz
# c3BhY2UuZGRucy5uZXQwHhcNMjEwODEwMTMwNjM1WhcNMzMxMjMxMTUwMDAwWjA4
# MQ4wDAYDVQQDDAVTdHVmZjEmMCQGCSqGSIb3DQEJARYXc2lnbmVkQHNzc3BhY2Uu
# ZGRucy5uZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDCVKUsKJ3O
# 0vI93cTscCYDyazPr+iTVRlufMxExC/NeSdiLPubmRmATGOU8s7GauDlpLTwFwsN
# EcphlrYMjOxBpYwN0A/8VjMPC5n+CJvnnZ7rAi8Eya036qNbEpHHs1QzTt0kVvMw
# xr/02RRi9r8OlZqPIK5Hnir2ahsnl0kkQCSUEOx2tDTpsN4ASgAiQokCa4Crb8Cd
# oeAKaNuq4wPPAdEBVtOh1gx11mMrglKITtUkTsl9dnApReucozTH+kx4suJ1Ce2L
# h1OFQoCG4DBeibCxxScTPFaWyCzBL3lV1KkDZbjZtkpWapzx9iVzDu7IiJoZ4rPS
# TFksY8yOAewtAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIFoDATBgNVHSUEDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQUB8ZN3z0oQ+i6Oq74nQEEsFo32JIwDQYJKoZIhvcN
# AQELBQADggEBAET6sXYkQNjGOAGJPDLaDDIlj5ClaXJchGFpVSoIqaWLTtt7FAOt
# IXu1UbIK2fvBXJv7/Y+nffBkeEDyylMn2dpyQQOAMWiJxoJADwikqaQYUpxOXbK7
# /0J581jAjF91m7RVszVZb3cx+acgB+Cx+/Ac2Z4hZOg1s06wp9BBNt05zE3/y7fx
# gcx3yddsGP6Udga3aM0ghL0/Xjsvf+gUNPddSU+vwgJd3EaZ2ouNAEbdog/vsbX3
# AIv97Y+EUXkXRU5G38AbZxWXNH/L6cuvXKxqN5r37x9wfU8nbxWnbY53Sfb2AMf9
# 65tVMRuVX3QBQwRzn41V7Ccov7/yAGfLjbMxggHtMIIB6QIBATBMMDgxDjAMBgNV
# BAMMBVN0dWZmMSYwJAYJKoZIhvcNAQkBFhdzaWduZWRAc3NzcGFjZS5kZG5zLm5l
# dAIQZ3l3Hc49SZpLpqlhZJtuYzAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEK
# MAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3
# AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUl+t/ehKGjywxKyju
# 40dm0W5BMF8wDQYJKoZIhvcNAQEBBQAEggEAHh2RJJV/0QGcXiryYLmCHEYbGyJG
# 38Vc03oqTZvw52+BH9v7dhBwmd4YxGVtCjOi+MoF7AklVjW4+9IO6TBRoBskM0yE
# zQC5NAj6thqkiU8RaHxYpF4uBffXXB+qaHSEwDXFD3XExG4PrcwEWTCdJCqfJWus
# F6w1FkvNqwCv3oOfPxGU8BsQi1VSXDqjAi8hyKCd67FCwOlz1SW01w8XEYlrIPa4
# c+7wks59oAGqa3joeUzuGhqvb4O2sJQSuz7uFFU0FV4WczMJHKmdrbLV7u62Jjha
# g6EB1ut4lJBHJeTvidtMS6QekssWeEdGtj9+MlTrqzscNc7ohlZPAH/nCw==
# SIG # End signature block
