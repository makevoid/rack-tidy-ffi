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