# PersistentProperties

A property wrapper that allow objects that conform to Codable protocol to be stored in user defaults.

## Compatibility
- Swift 5.1 onwards.

## Installation

1. From Xcode menu, open File → Swift Packages → Add Package Dependency.
2. Paste the repository url https://github.com/amanssharma/PersistentProperties and hit Next.
3. Take your pick from choosing the latest version, or a specific commit or branch, as you please, and hit Next, and then on the next prompt hit Finish.

## Usage

Append the declaration of any property with the attribute @PersistentProperty.
Specify the user defaults key and any default value (for optional properties).
By default the standard user defaults are used, however, this may be overriden in the property wrapper initialiser to specify a different UserDefaults suite.

The attribute can be applied to any type that conforms to Codable.

## Examples

### 1. The below variable will be stored in standard user defaults with the key "some-key".
@PersistentProperty(key: "some-key", defaultValue: true) var boolFoo: Bool

### 2. The below variable is an optional and will return nil if user defaults do not contain any value for the specified key ("optional-key" in this example).
@PersistentProperty(key: "optional-key") var optionalText: String?

### 3. The below variable will be stored in standard user defaults with the key "some-key".
let customDefaultsSuite = UserDefaults.init(suiteName: "customDefaultsSuite")!
@PersistentProperty(key: "custom-suite-key", defaultValue: "", defaults: customDefaultsSuite) var standardStringVar: String
