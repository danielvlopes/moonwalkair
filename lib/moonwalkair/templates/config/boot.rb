APP_NAME       = "<%= project_name %>"

MOON_CONFIG    = File.expand_path(File.dirname(__FILE__))
MOON_ROOT      = File.expand_path("#{MOON_CONFIG}/..")
MOON_BIN       = File.expand_path("#{MOON_ROOT}/bin")
MOON_TMP       = File.expand_path("#{MOON_ROOT}/tmp")

AIR_SDK        = "<%= air_sdk %>"
AIR_LIB        = File.expand_path("#{MOON_ROOT}/vendor/#{AIR_SDK}/lib")
AIR_BIN        = File.expand_path("#{MOON_ROOT}/vendor/#{AIR_SDK}/bin")
AIR_FRAMEWORKS = File.expand_path("#{MOON_ROOT}/vendor/#{AIR_SDK}/frameworks")