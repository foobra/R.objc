R.objc
======

![](https://github.com/SysdataSpA/R.objc/blob/master/R.objc_example.gif)

Introduction
------------

Freely inspired by [R.swift](https://github.com/mac-cain13/R.swift) (Thank you,
guys!): get autocompleted localizable strings, asset catalogue images names and
storyboard objects.

You can have:

-   **Compile time check**: no more incorrect strings that make your app crash
    at runtime

-   **Autocompletion**: never have to guess that image name again

Installation
------------

[CocoaPods](http://cocoapods.org/) is the recommended way of installation, as
this avoids including any binary files into your project.

### Cocoapods

1.  Add `pod 'R.objc'` to your [Podfile](http://cocoapods.org/#get_started) and
    run `pod install`

2.  In XCode, click on your project in the Project Navigator

3.  Choose your target under `TARGETS`, click the `Build Phases` tab and add
    a `New Run Script Phase` by clicking the little plus icon in the top left

4.  Drag the new `Run Script` phase **above** the `Compile Sources` phase,
    expand it and paste the following script: `"${PODS_ROOT}/Robjc" -p
    "$SRCROOT"`(after -p option, you have to specify the root folder of your
    project, from where to scan your code)

5.  Build your project; in Finder you will now see `R.h` and `R.m` files in
    the `$SRCROOT` folder: drag them into your project and **uncheck** `Copy
    items if needed`

6.  Repeat point 3 and 4 for every target in your project

### Manual

Since there are some problems with Cocoapods, you can manually install R.objc

1.  Download latest version from the [releases
    section](https://github.com/SysdataSpA/R.objc/releases)

2.  Unzip in a folder anywhere you want.

3.  In XCode, click on your project in the Project Navigator

4.  Choose your target under `TARGETS`, click the `Build Phases` tab and add
    a `New Run Script Phase` by clicking the little plus icon in the top left

5.  Drag the new `Run Script` phase **above** the `Compile Sources` phase,
    expand it and paste the following script: `"<path to the unzipped
    folder>/Robjc" -p "$SRCROOT"` (we suggest to unzip the folder somewhere
    within your project folder, in order to use the `$SRCROOT` shortcut for the
    path. **Don't add anything to your Xcode project, or it won't build
    anymore**) (after -p option, you have to specify the root folder of your
    project, from where to scan your code)

6.  Build your project; in Finder you will now see `R.h` and `R.m` files in
    the `$SRCROOT` folder: drag them into your project and **uncheck** `Copy
    items if needed`

7.  Repeat point 3 and 4 for every target in your project

 

At every build, the generated file will update automatically and there's no need
to do anything.

Normally, you would write code like this:

`[self.buttonProceed setTitle:NSLocalizedString(@"home_proceed", nil)
forState:UIControlStateNormal];`

`self.welcomeLabel.text = [NSString
stringWithFormat:NSLocalizedString(@"home_title_welcome", nil), @"John"];
//"hello %@"`

`self.radioButtonImageView.image = selected ? [UIImage
imageNamed:@"checkedRadioButton"] : [UIImage
imageNamed:@"uncheckedRadioButton"];`

Now you can write

`[self.buttonProceed setTitle:R.string.localizable.homeProceed
forState:UIControlStateNormal];`

`self.welcomeLabel.text = [R.string.localizable homeTitleWelcome:@"John"];`

`self.radioButtonImageView.image = selected ? R.image.checkedRadioButton :
R.image.uncheckedRadioButton;`

Contribute
----------

We'll love contributions, fell free to fork and submit pull requests for
additional generators or optimizations; for any question or idea write to
team.mobile[AT]sysdata.it
