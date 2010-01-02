class Moonwalkair
  class Generator
    class Options < Hash
      attr_reader :opts, :orig_args

      def initialize(args)
        super()
        
        @orig_args = args.clone

        require 'optparse'
        @opts = OptionParser.new do |o|
          o.banner = "Usage: #{File.basename($0)} [options] \ne.g. #{File.basename($0)} air-app"
          
          o.on('-f', '--directory [DIRECTORY]', 'specify the directory to generate into') do |directory|
            self[:directory] = directory
          end
                
          o.on('-d', '--description [DESCRIPTION]', 'specify a description of the project') do |description|
            self[:description] = description
          end
          
          o.on('-n', '--user-name [USER_NAME]', "the user's name, ie that is credited in the LICENSE") do |user_name|
            self[:user_name] = user_name
          end

          o.on('-e','--user-email [USER_EMAIL]', "the user's email, ie that is credited in the README") do |user_email|
            self[:user_email] = user_email
          end
                    
        end

        begin
          @opts.parse!(args)
          self[:project_name] = args.shift
        rescue OptionParser::InvalidOption => e
          self[:invalid_argument] = e.message
        end
      end

      def merge(other)
        self.class.new(@orig_args + other.orig_args)
      end

    end
  end
end