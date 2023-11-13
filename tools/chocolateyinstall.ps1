$ErrorActionPreference = 'Stop'

$url = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha4/tofu_1.6.0-alpha4_windows_386.zip'
$url64 = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha4/tofu_1.6.0-alpha4_windows_amd64.zip'
$checksum = '577ace2d25ce19565f4e649486d0eae399e6317f9d9cd28e27d034336a33d3e5'
$checksum64 = 'b883638d6a571810e1b7cf16a2a46257517a8af786aeb25b53c5f388970a3b59'

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
