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
    SCRIPT_BUILD = File.join(SCRIPT_DIR, 'build')
    SCRIPT_RUN = File.join(SCRIPT_DIR, 'run')
    SCRIPT_CERTIFICATE = File.join(SCRIPT_DIR, 'certificate')

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
    end

    def render_template(source)
      puts File.join(template_dir, source)
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

    def touch_in_target(destination)
      final_destination = File.join(target_dir, destination)
      FileUtils.touch  final_destination
      $stdout.puts "\tcreate\t#{destination}"
    end
  end
end
