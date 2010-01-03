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
    TMP_DIR = "tmp"

    SCRIPT_DIR = "script"
    SCRIPT_BUILD = File.join(SCRIPT_DIR, 'build')
    SCRIPT_RUN = File.join(SCRIPT_DIR, 'run')
    SCRIPT_CERTIFICATE = File.join(SCRIPT_DIR, 'certificate')

    CONFIG_DIR = "config"
    CONFIG_BOOT = File.join(CONFIG_DIR, 'boot.rb')
    CONFIG_BUILD = File.join(CONFIG_DIR, 'build.yml')
    CONFIG_UPDATE = File.join(CONFIG_DIR, 'update_config.xml')

    ASSETS_DIR =  File.join(APP_DIR, "assets")
    ASSETS_AUDIO = File.join(ASSETS_DIR, "audio")
    ASSETS_CSS = File.join(ASSETS_DIR, "css")
    ASSETS_IMAGES = File.join(ASSETS_DIR, "images")

    LIB_DIR =  File.join(APP_DIR, "lib")
    SCRIPTS_DIR =  File.join(APP_DIR, "scripts")
    VIEWS_DIR =  File.join(APP_DIR, "views")

    attr_accessor :target_dir, :user_name, :user_email, :project_name, :options, :description

    def initialize(options = {})
      self.options = options

      self.project_name = options[:project_name]
      if self.project_name.nil? || self.project_name.squeeze.strip == ""
        raise "Need a project name"
      end

      self.target_dir = options[:directory] || self.project_name
      self.user_name  = options[:user_name]
      self.user_email = options[:user_email]
    end

    def run
      create_files
      $stdout.puts "Your project is ready to walk in #{target_dir}"
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
      output_template_in_target SCRIPT_BUILD
      output_template_in_target SCRIPT_RUN
      output_template_in_target SCRIPT_CERTIFICATE

      mkdir_in_target CONFIG_DIR
      output_template_in_target CONFIG_BOOT
      output_template_in_target CONFIG_BUILD
      output_template_in_target CONFIG_UPDATE

      mkdir_in_target ASSETS_DIR
      mkdir_in_target ASSETS_AUDIO
      mkdir_in_target ASSETS_CSS
      touch_in_target File.join(ASSETS_CSS, "#{project_name}.css")
      output_template_in_target File.join(ASSETS_CSS, "jqtouch.css")
      output_template_in_target File.join(ASSETS_CSS, "theme.css")
      copy_in_target ASSETS_IMAGES

      copy_in_target LIB_DIR
      copy_in_target VIEWS_DIR
      mkdir_in_target SCRIPTS_DIR
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
