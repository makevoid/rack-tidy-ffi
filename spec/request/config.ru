path = File.expand_path "../", __FILE__
require "#{path}/tidy-app"

# lib_path = File.expand_path "../../../lib", __FILE__
# require "#{lib_path}/rack-tidy-ffi"
require 'rack-tidy-ffi'


use RackTidyFFI

run TidyApp