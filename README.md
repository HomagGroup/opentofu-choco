# OpenTofu Chocolatey Package

Create package locally

~~~powershell
# Create a chocolatey package
choco pack --version 1.6.0-alpha2

# Install the chocolatey package
choco install opentofu --source .
# if it's a prerelease e.g. 1.6.0-alpha2
choco install opentofu --source . --pre

# Uninstall the chocolatey package
choco uninstall opentofu
~~~

---

I used the [terraform choco package](https://github.com/jamestoyer/chocolatey-packages) from [@jamestoyer](https://github.com/jamestoyer) as template. Thank you ❤
