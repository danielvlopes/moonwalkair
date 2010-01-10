# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{moonwalkair}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Lopes"]
  s.date = %q{2010-01-09}
  s.default_executable = %q{moonwalk}
  s.description = %q{Moonwalkair help you to start build your AIR app and make it walk in the right way. The gem let you start your development faster, creating the entire folder structure and many files that a AIR app depends}
  s.email = %q{danielvlopes@gmail.com}
  s.executables = ["moonwalk"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "bin/moonwalk",
     "lib/initializer.rb",
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
     "lib/moonwalkair/templates/config/config.yml",
     "lib/moonwalkair/templates/config/update_config.xml",
     "lib/moonwalkair/templates/descriptor.xml",
     "lib/moonwalkair/templates/script/build",
     "lib/moonwalkair/templates/script/certificate",
     "lib/moonwalkair/templates/script/run",
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
      s.add_runtime_dependency(%q<yui-compressor>, ["~> 0.9.1"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yui-compressor>, ["~> 0.9.1"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yui-compressor>, ["~> 0.9.1"])
  end
end

