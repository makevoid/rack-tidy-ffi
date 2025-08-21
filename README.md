# RackTidyFFI

Rack middleware to automatically tidy HTML output using tidy_ffi.

> **Note:** This is a legacy project created as a simple drop-in tool for development environments. While functional for basic HTML tidying, it's not recommended for production use. For production applications requiring HTML validation and cleanup, consider implementing a more robust solution with proper error handling, performance optimization, and modern HTML5 support.


## Features

- Uses `tidy_ffi`
- Automatically cleans and formats HTML output from your Rack application

## Installation

Add to your Gemfile:

```ruby
gem 'rack-tidy-ffi', '>= 0.2.1', require: 'rack-tidy-ffi'
```

Or install directly:

```bash
gem install rack-tidy-ffi
```

## Usage

### Rack (config.ru)

```ruby
require 'rack-tidy-ffi'

use RackTidyFFI
run YourApp
```

### Rails

Add to `config/application.rb`:

```ruby
config.middleware.use RackTidyFFI
```

### Sinatra

```ruby
require 'rack-tidy-ffi'

use RackTidyFFI
```

## Examples

- **Sinatra Example**: https://gist.github.com/2347448
- **Rails Example**: https://github.com/makevoid/example_rack-tidy-ffi

## Changelog

- **0.2.1** - Added Rails support
- **0.2.0** - Added gem dependency
- **0.1.0** - Initial release

## Author

Francesco Canessa (makevoid) - https://github.com/makevoid

## License

MIT License

## Repository

https://github.com/makevoid/rack-tidy-ffi

----

### [More documentation](https://github.com/makevoid/rack-tidy-ffi/wiki/Extra-Documentation)
