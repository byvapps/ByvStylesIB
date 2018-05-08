# ByvStylesIB

Interface Builder designable classes to use ByvStyles

[![CI Status](https://img.shields.io/travis/adrianByv/ByvStylesIB.svg?style=flat)](https://travis-ci.org/adrianByv/ByvStylesIB)
[![Version](https://img.shields.io/cocoapods/v/ByvStylesIB.svg?style=flat)](https://cocoapods.org/pods/ByvStylesIB)
[![License](https://img.shields.io/cocoapods/l/ByvStylesIB.svg?style=flat)](https://cocoapods.org/pods/ByvStylesIB)
[![Platform](https://img.shields.io/cocoapods/p/ByvStylesIB.svg?style=flat)](https://cocoapods.org/pods/ByvStylesIB)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requeriments

To IBDesignable be able to load Colors.josn and Styles.json they must be placed in a `zeplin` named folder inside the project `root` directory.

## PODs bug

If Interface builder display some errors you can place this code inside Podfile and run pod install

```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
        # add this line
        target.new_shell_script_build_phase.shell_script = "mkdir -p $PODS_CONFIGURATION_BUILD_DIR/#{target.name}"
            target.build_configurations.each do |config|
                config.build_settings['CONFIGURATION_BUILD_DIR'] = '$PODS_CONFIGURATION_BUILD_DIR'
            end
            installer.pods_project.build_configurations.each do |config|
            config.build_settings.delete('CODE_SIGNING_ALLOWED')
            config.build_settings.delete('CODE_SIGNING_REQUIRED')
        end
    end
end
```

## Installation

ByvStylesIB is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ByvStylesIB'
```

## Author

adrianByv, adrian@byvapps.com

## License

ByvStylesIB is available under the MIT license. See the LICENSE file for more info.
