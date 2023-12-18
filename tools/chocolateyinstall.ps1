$ErrorActionPreference = 'Stop'

$url = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-beta5/tofu_1.6.0-beta5_windows_386.zip'
$url64 = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-beta5/tofu_1.6.0-beta5_windows_amd64.zip'
$checksum = '05eca28848dde158b1dc2ad5eb51523377ba6ad98a8b9535ade700b5f88e92e1'
$checksum64 = '8d405b492b86fc5b5668dcf22fcd84bf6a75c200810251d6838d9e5f0904220d'

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
