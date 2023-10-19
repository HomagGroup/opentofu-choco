$ErrorActionPreference = 'Stop'

$url = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha3/tofu_1.6.0-alpha3_windows_386.zip'
$url64 = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha3/tofu_1.6.0-alpha3_windows_amd64.zip'
$checksum = 'd0f4a5ff9dca2804a5c6d947cf234bc2604b8e4b5a798a710d964a019b44b1e9'
$checksum64 = '395e7278136c06fe87ad4115ad5781332f37790adc5e5e64160b01d2a3acd53b'

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
