require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "moonwalkair"
    gem.summary = %Q{Help you to get your AIR/JS app up and running}
    gem.description = %Q{Moonwalkair help you to start build your AIR app and make it walk in the right way. The gem let you start your development faster, creating the entire folder structure and many files that a AIR app depends}
    gem.email = "danielvlopes@gmail.com"
    gem.homepage = "http://github.com/danielvlopes/moonwalkair"
    gem.authors = ["Daniel Lopes"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency('yui-compressor', '~> 0.9.1')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies
task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "moonwalkair #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end