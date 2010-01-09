require "rubygems"

MOON_ROOT = "#{File.dirname(__FILE__)}/.." unless defined?(MOON_ROOT)
CONFIG    = YAML.load_file(File.join(MOON_ROOT, 'config', 'config.yml'))

module MoonwalkAir
  class << self
    def boot!
      gem 'moonwalkair'
      require 'initializer'
    end
  end
end

MoonwalkAir.boot!