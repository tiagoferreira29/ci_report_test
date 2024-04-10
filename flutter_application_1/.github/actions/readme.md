# Actions
GitHub Actions Actions shared between workflows

## configure-git
Configures GIT

Supported host OS: Windows, Linux, MacOS

## install-windows-sdk
Supported host OS: Windows

Installs the required Windows SDK 10.0.134.0

## generate-version
Generates the version (major.minor.patch) and build number based in GitVersion

It provides additional version information fields
- Information Version (major.minor.patch+build-release-label.sha)
- Git SHA (full, and 6 characters long)

## apply-version
Applies the additional version information. It generates a DART source file holding the values a constants

 ## build-flutter-app-windows
 Builds a folder holding a flutter app 
 - stamps binaries with supplied version and build information
 - can apply additional version information
 - supports obfuscation

 ## sign-windows-binaries
 Signs all Windows binaries (*.dll, *.exe) in a given folder with an x.509 code signing certificate.
 - Certificates must be located in an Azure KeyVault
 - Supports developer (no time stamping) and production signing

 ## sign-windows-installer
 Signs a single windows installer asset (MSIX, MSI) with an x.509 code signing certificate.
 - Certificates must be located in an Azure KeyVault
 - Supports developer (no time stamping) and production signing
