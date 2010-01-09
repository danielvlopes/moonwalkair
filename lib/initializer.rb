module MoonwalkAir
  class << self
    def app_name
      CONFIG["app_name"]
    end

    def root
      @@moon_root ||= MOON_ROOT
    end

    def config
      File.expand_path("#{root}/config")
    end
    
    def bin
      File.expand_path("#{root}/bin")
    end

    def tmp
      File.expand_path("#{root}/tmp")
    end

    def air_sdk
      CONFIG["air_sdk"]
    end

    def air_lib
      File.expand_path("#{air_sdk}/lib")
    end

    def air_bin
      File.expand_path("#{air_sdk}/bin")
    end

    def air_frameworks
      File.expand_path("#{air_sdk}/frameworks")
    end

  end
end