version='1.6.1'

wget "https://github.com/opentofu/opentofu/releases/download/v${version}/tofu_${version}_SHA256SUMS" -O tofu_SHA256SUMS

echo checksum tofu_${version}_windows_386.zip
grep tofu_${version}_windows_386.zip tofu_SHA256SUMS | awk '{print $1}'

echo checksum64 tofu_${version}_windows_amd64.zip
grep tofu_${version}_windows_amd64.zip tofu_SHA256SUMS | awk '{print $1}'
