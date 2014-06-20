# Artsy+UIFonts

This project contains the fonts and UIFont categories required to make a project with standard artsy design. 
To make it work you have to include in the Applications XX-Info.plist. See [here](https://github.com/artsy/Artsy-UIFonts/blob/master/Example/FontApp/FontApp-Info.plist#L37-L45) for an example.

```
<array>
	<string>AGaramondPro-BoldItalic.otf</string>
	<string>AGaramondPro-Bold.otf</string>
	<string>AGaramondPro-Italic.otf</string>
	<string>AGaramondPro-Regular.otf</string>
	<string>ITC_Avant_Garde_Gothic__Demi.ttf</string>
	<string>AGaramondPro-Semibold.otf</string>
</array>
```

## Usage

To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Installation

Artsy+UIColors is available through [CocoaPods](http://cocoapods.org), and the [Artsy Specs Repo](https://github.com/artsy/specs). 

To install the Specs repo run:

    pod repo add artsy https://github.com/artsy/Specs.git

To install the pod, add following line to your Podfile:

    pod "Artsy+UIColors"

## Author

Orta, orta.therox@gmail.com

## License

Artsy+UIFonts is not open source `:(` - this is mainly so that we don't give out other people's fonts. That's ok though.