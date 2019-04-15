#
# Be sure to run `pod lib lint R.objc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name                      = 'MGR.objc'
  s.version                   = '0.8.12'
  s.summary                   = 'Get autocompleted localizable strings and asset catalogue images names'
  s.description               = <<-DESC
Freely inspired by R.swift: get autocompleted localizable strings and asset catalogue images names.
You can have:
- Compile time check: no more incorrect strings that make your app crash at runtime
- Autocompletion: never have to guess that image name again
                       DESC

  s.homepage                  = 'https://github.com/foobra/R.objc'
  s.license                   = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author                    = { 'Sysdata SpA' => 'team.mobile@sysdata.it' }
  s.source                    = { :http => 'https://github.com/foobra/R.objc/releases/download/0.8.12/MGRobjec.zip' }
  s.preserve_paths            = "**/Robjc"
  s.ios.deployment_target     = '8.0'
  s.tvos.deployment_target    = '9.0'
end