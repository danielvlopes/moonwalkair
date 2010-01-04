# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{moonwalkair}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Lopes"]
  s.date = %q{2010-01-03}
  s.default_executable = %q{moonwalk}
  s.description = %q{Moonwalkair help you to start build your AIR app and make it walk in the right way. The gem let you start your development faster, creating the entire folder structure and many files that a AIR app depends}
  s.email = %q{danielvlopes@gmail.com}
  s.executables = ["moonwalk"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "bin/moonwalk",
     "lib/moonwalkair.rb",
     "lib/moonwalkair/generator.rb",
     "lib/moonwalkair/generator/application.rb",
     "lib/moonwalkair/generator/options.rb",
     "lib/moonwalkair/templates/LICENSE",
     "lib/moonwalkair/templates/README",
     "lib/moonwalkair/templates/app/assets/css/jqtouch.css",
     "lib/moonwalkair/templates/app/assets/css/theme.css",
     "lib/moonwalkair/templates/app/assets/images/apple/backButton.png",
     "lib/moonwalkair/templates/app/assets/images/apple/blueButton.png",
     "lib/moonwalkair/templates/app/assets/images/apple/cancel.png",
     "lib/moonwalkair/templates/app/assets/images/apple/chevron.png",
     "lib/moonwalkair/templates/app/assets/images/apple/grayButton.png",
     "lib/moonwalkair/templates/app/assets/images/apple/listArrowSel.png",
     "lib/moonwalkair/templates/app/assets/images/apple/listGroup.png",
     "lib/moonwalkair/templates/app/assets/images/apple/loading.gif",
     "lib/moonwalkair/templates/app/assets/images/apple/on_off.png",
     "lib/moonwalkair/templates/app/assets/images/apple/pinstripes.png",
     "lib/moonwalkair/templates/app/assets/images/apple/selection.png",
     "lib/moonwalkair/templates/app/assets/images/apple/thumb.png",
     "lib/moonwalkair/templates/app/assets/images/apple/toggle.png",
     "lib/moonwalkair/templates/app/assets/images/apple/toggleOn.png",
     "lib/moonwalkair/templates/app/assets/images/apple/toolButton.png",
     "lib/moonwalkair/templates/app/assets/images/apple/toolbar.png",
     "lib/moonwalkair/templates/app/assets/images/apple/whiteButton.png",
     "lib/moonwalkair/templates/app/assets/images/icons/128.png",
     "lib/moonwalkair/templates/app/assets/images/icons/16.png",
     "lib/moonwalkair/templates/app/assets/images/icons/32.png",
     "lib/moonwalkair/templates/app/assets/images/icons/48.png",
     "lib/moonwalkair/templates/app/lib/air/AIRAliases.js",
     "lib/moonwalkair/templates/app/lib/air/AIRIntrospector.js",
     "lib/moonwalkair/templates/app/lib/air/AIRLocalizer.js",
     "lib/moonwalkair/templates/app/lib/air/AIRMenuBuilder.js",
     "lib/moonwalkair/templates/app/lib/air/AIRSourceViewer.js",
     "lib/moonwalkair/templates/app/lib/air/airglobal.abc",
     "lib/moonwalkair/templates/app/lib/air/applicationupdater.swf",
     "lib/moonwalkair/templates/app/lib/air/applicationupdater_ui.swf",
     "lib/moonwalkair/templates/app/lib/air/servicemonitor.swf",
     "lib/moonwalkair/templates/app/lib/jquery.js",
     "lib/moonwalkair/templates/app/lib/plugins/jqtouch/jqtouch.js",
     "lib/moonwalkair/templates/app/lib/plugins/jqtouch/jqtouch.transitions.js",
     "lib/moonwalkair/templates/app/views/index.html",
     "lib/moonwalkair/templates/config/boot.rb",
     "lib/moonwalkair/templates/config/build.yml",
     "lib/moonwalkair/templates/config/update_config.xml",
     "lib/moonwalkair/templates/descriptor.xml",
     "lib/moonwalkair/templates/script/build",
     "lib/moonwalkair/templates/script/certificate",
     "lib/moonwalkair/templates/script/run",
     "lib/moonwalkair/templates/vendor/air2.0beta/bin/adl",
     "lib/moonwalkair/templates/vendor/air2.0beta/bin/adt",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/AIRAliases.js",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/AIRIntrospector.js",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/AIRLocalizer.js",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/AIRMenuBuilder.js",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/AIRSourceViewer.js",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/airglobal.abc",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/applicationupdater.swf",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/applicationupdater_ui.swf",
     "lib/moonwalkair/templates/vendor/air2.0beta/frameworks/servicemonitor.swf",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/adt.jar",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/bin/naip",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/Info.plist",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/MacOS/naib",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/PkgInfo",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/Resources/Config.plist",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/Resources/MainMenu.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/Resources/NativeInstaller.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/lib/nai/lib/naib.app/Contents/Resources/UnsupportedOSDialog.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Adobe AIR",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Adobe AIR",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Adobe AIR.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Info.plist",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/MacOS/Flash Player",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/Flash Player.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/FlashIconAlert.png",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/FlashPlayer.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/cs.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/de.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/document_f4a.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/document_f4p.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/document_f4v.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/document_flv.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/document_swf.icns",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/en.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/es.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/fr.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/it.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/ja.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/ko.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/nl.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/pl.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/pt.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/ru.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/sv.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/tr.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/zh_Hans.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Flash Player.plugin/Contents/Resources/zh_Hant.lproj/PlayerUILocalizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Info.plist",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Template.app/Contents/Info.plist",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Template.app/Contents/MacOS/Template",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Template.app/Contents/PkgInfo",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/Thawte Root Certificate.cer",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/WebKit.dylib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/cs.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/de.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/en.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/es.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/fr.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/it.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ja.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ko.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/nl.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pl.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/pt.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/ru.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/sv.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/tr.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hans.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/AuthDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/ContentUIText.xml",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/FlashPromptDialog.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/Localizable.strings",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/Localized.rsrc",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/Versions/1.0/Resources/zh_Hant.lproj/MainMenu.nib/keyedobjects.nib",
     "lib/moonwalkair/templates/vendor/air2.0beta/runtimes/air/mac/Adobe AIR.framework/sentinel",
     "moonwalkair.gemspec",
     "spec/moonwalkair_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/danielvlopes/moonwalkair}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Help you to get your AIR/JS app up and running}
  s.test_files = [
    "spec/moonwalkair_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

