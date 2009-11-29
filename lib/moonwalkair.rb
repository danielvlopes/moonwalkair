# The Moonwalkair helps you start and organize you HTML/JS based AIR app.

class Moonwalkair
  require 'rubygems/user_interaction'

  autoload :Generator, 'moonwalkair/generator'
  
  attr_accessor :base_dir, :output

  def initialize(base_dir = '.')
    @base_dir = base_dir
  end

end

