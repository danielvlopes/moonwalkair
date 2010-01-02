class Moonwalkair
  class Generator
    class Application
      class << self
        def run!(*arguments)
          options = Moonwalkair::Generator::Options.new(arguments)

          if options[:invalid_argument]
            $stderr.puts options[:invalid_argument]
            options[:show_help] = true
          end

          if options[:show_help]
            $stderr.puts options.opts
            return 1
          end

          if options[:project_name].nil? || options[:project_name].squeeze.strip == ""
            $stderr.puts options.opts
            return 1
          end

          begin
            generator = Moonwalkair::Generator.new(options)
            generator.run
            return 0
          rescue Moonwalkair::FileAlreadyExist
            $stderr.puts "The directory #{options[:project_name]} already exists. Maybe move it out of the way before continuing?"
            return 1
          end
        end
      end

    end
  end
end
