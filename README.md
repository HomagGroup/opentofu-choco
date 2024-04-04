# OpenTofu Chocolatey Package

---
⚠ This repository is now maintained here: https://github.com/ravager-dk/Chocolatey-Packages ⚠
---

Create package locally

~~~powershell
# Execute `get-shasums.sh` to get the correct SHASUMS for the `chocolateyinstall.ps1` and enter them manually.
.\get-shasums.sh

# Create a chocolatey package
choco pack --version 1.6.2

# Install the chocolatey package
choco install opentofu --source .
# if it's a prerelease e.g. 1.6.0-beta5
choco install opentofu --source . --pre

# Upgrade the chocolatey package
choco upgrade opentofu --source .

# check if version is correct
tofu --version

# Uninstall the chocolatey package
choco uninstall opentofu
~~~

---

I used the [terraform choco package](https://github.com/jamestoyer/chocolatey-packages) from [@jamestoyer](https://github.com/jamestoyer) as template. Thank you ❤
