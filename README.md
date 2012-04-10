# RackTidyFFI

## Rack middleware to tidy application output

- Works with ruby 1.9
- uses tidy_ffi instead of tidy (broken on 1.9 because of Ruby DL changes)


## Installation

    gem install rack-tidy-ffi

## Usage

in your config.ru:

    require 'rack-tidy-ffi'
    
    use RackTidyFFI
    
    
add this to your Gemfile if you are using bundler: 

    gem "rack-tidy-ffi", ">= 0.2.1", require: "rack-tidy-ffi"
    
if you are using rails you can add this in your config/environment.rb if you want to use the gem as a middleware:

    config.middleware.use RackTidyFFI
    
    
## Changelog

- 0.2.1 added Rails support
- 0.2   added gem dependency


## Usage Example:

- Sinatra: https://gist.github.com/2347448
- Rails: https://github.com/makevoid/example_rack-tidy-ffi