fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios test_flight
```
fastlane ios test_flight
```
Push a new beta build to TestFlight
### ios app_store
```
fastlane ios app_store
```
Submit to the AppStore
### ios submit_latest_build
```
fastlane ios submit_latest_build
```
Submit latest TF Build to AppStore
### ios build
```
fastlane ios build
```
Build App with Development Profile/Cert
### ios resign_ipa
```
fastlane ios resign_ipa
```
Resign App with Distribution Profile/Cert

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
