require 'erb'
require 'uri'

class Moonwalkair
  class FileAlreadyExist < StandardError ; end

  # Generator for creating a moonwalkair-enabled project
  class Generator
    require 'moonwalkair/generator/options'
    require 'moonwalkair/generator/application'

    # Folder and template files
    APP_DIR = "app"
    BIN_DIR = "bin"
    SCRIPT_DIR = "script"
    CONFIG_DIR = "config"
    APP_ASSETS_DIR =  File.join(APP_DIR, "assets")
    APP_LIB_DIR =  File.join(APP_DIR, "lib")
    APP_SCRIPTS_DIR =  File.join(APP_DIR, "scripts")
    APP_VIEWS_DIR =  File.join(APP_DIR, "views")

    attr_accessor :target_dir, :user_name, :user_email, :project_name,
                  :options, :description, :air_sdk

    def initialize(options = {})
      self.options = options

      self.project_name = options[:project_name]
      if self.project_name.nil? || self.project_name.squeeze.strip == ""
        raise "Need a project name"
      end

      self.air_sdk = options[:air_sdk] || "air2.0beta"

      self.target_dir = options[:directory] || self.project_name
      self.user_name  = options[:user_name]
      self.user_email = options[:user_email]
    end

    def run
      create_files
      $stdout.puts ""
      $stdout.puts "*** Place your AIR SDK path in #{target_dir}/config/config.yml *** \t"      
    end

    private
    def create_files
      unless File.exists?(target_dir) || File.directory?(target_dir)
        FileUtils.mkdir target_dir
      else
        raise FileAlreadyExist, "The directory #{target_dir} already exists, aborting."
      end

      output_template_in_target 'README'
      output_template_in_target 'LICENSE'
      output_template_in_target 'descriptor.xml'

      mkdir_in_target APP_DIR
      mkdir_in_target BIN_DIR

      mkdir_in_target SCRIPT_DIR
      output_template_in_target File.join(SCRIPT_DIR, 'build')
      output_template_in_target File.join(SCRIPT_DIR, 'run')
      output_template_in_target File.join(SCRIPT_DIR, 'certificate')

      mkdir_in_target CONFIG_DIR
      output_template_in_target File.join(CONFIG_DIR, 'boot.rb')
      output_template_in_target File.join(CONFIG_DIR, 'build.yml')
      output_template_in_target File.join(CONFIG_DIR, 'update_config.xml')
      output_template_in_target File.join(CONFIG_DIR, 'config.yml')

      mkdir_in_target APP_ASSETS_DIR
      mkdir_in_target File.join(APP_ASSETS_DIR, "audio")
      copy_in_target File.join(APP_ASSETS_DIR, "images")
            
      css_dir = File.join(APP_ASSETS_DIR, "css")
      mkdir_in_target css_dir
      touch_in_target File.join(css_dir, "#{project_name}.css")
      output_template_in_target File.join(css_dir, "jqtouch.css")
      output_template_in_target File.join(css_dir, "theme.css")

      copy_in_target APP_LIB_DIR
      copy_in_target APP_VIEWS_DIR
      mkdir_in_target APP_SCRIPTS_DIR
    end

    def render_template(source)
      template_contents = File.read(File.join(template_dir, source))
      template          = ERB.new(template_contents, nil, '<>')

      # squish extraneous whitespace from some of the conditionals
      template.result(binding).gsub(/\n\n\n+/, "\n\n")
    end

    def output_template_in_target(source, destination = source)
      final_destination = File.join(target_dir, destination)
      template_result   = render_template(source)

      File.open(final_destination, 'w') {|file| file.write(template_result)}

      $stdout.puts "\tcreate\t#{destination}"
    end

    def template_dir
      File.join(File.dirname(__FILE__), 'templates')
    end

    def mkdir_in_target(directory)
      final_destination = File.join(target_dir, directory)
      FileUtils.mkdir final_destination
      $stdout.puts "\tcreate\t#{directory}"
    end

    def copy_in_target(directory)
      FileUtils.cp_r File.join(template_dir,directory), File.join(target_dir, directory)
      $stdout.puts "\tcreate\t#{directory}"
    end

    def touch_in_target(destination)
      final_destination = File.join(target_dir, destination)
      FileUtils.touch  final_destination
      $stdout.puts "\tcreate\t#{destination}"
    end
  end
end