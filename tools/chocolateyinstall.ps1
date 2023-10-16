$ErrorActionPreference = 'Stop'

$url = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha2/tofu_1.6.0-alpha2_windows_386.zip'
$url64 = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha2/tofu_1.6.0-alpha2_windows_amd64.zip'
$checksum = 'C69F8FCECC1CD447677D2E143C41311C4A6D63F639A0504C23C6260D57CB8228'
$checksum64 = '3F9EDE88A2233BE5221766BE460D191A33FF1E9C1BDAEF7920576D3838533523'

$unzipLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageParams = @{
  PackageName   = "opentofu"
  UnzipLocation = $unzipLocation
  Url           = $url
  Url64         = $url64
  Checksum      = $checksum
  Checksum64    = $checksum64
  ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams
