$ErrorActionPreference = 'Stop'

$url = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-beta2/tofu_1.6.0-beta2_windows_386.zip'
$url64 = 'https://github.com/opentofu/opentofu/releases/download/v1.6.0-beta2/tofu_1.6.0-beta2_windows_amd64.zip'
$checksum = '03a0dcb538ba4cdd67e6514eec99a79a40c2f8768403cc1fa0ac6a52c511a95e'
$checksum64 = '9e3422bf6c8a6064fec342de743aae1dea26294e9339e3388eb87061593244ab'

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
