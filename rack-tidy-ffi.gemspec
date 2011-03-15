path = File.expand_path("../lib", __FILE__)
$:.unshift(path) unless $:.include?(path)
require "rack-tidy-ffi/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'rack-tidy-ffi'
  s.version     = RackTidyFFI::VERSION
  s.summary     = 'Rack middleware to tidy application output'
  s.description = 'Rack middleware to tidy application output using tidy_ffi gem - default output is indented and w/ html5 doctype - works with ruby1.9'

  s.author            = "Francesco 'makevoid' Canessa"
  s.email             = 'makevoid@gmail.com'
  s.homepage          = 'http://makevoid.com'

  s.files        = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
end