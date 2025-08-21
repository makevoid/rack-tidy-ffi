# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

`rack-tidy-ffi` is a Ruby gem that provides Rack middleware for automatically tidying HTML output using the `tidy_ffi` gem. The middleware intercepts HTML responses and formats them with proper indentation and HTML5 doctype.

## Architecture

### Core Components

- **RackTidyFFI** (`lib/rack-tidy-ffi.rb`): Main middleware class that intercepts Rack responses
- **TidyMachine** (`lib/tidy-machine.rb`): Wrapper around `tidy_ffi` with default options for HTML tidying
- **Version** (`lib/rack-tidy-ffi/version.rb`): Gem version constant

### Middleware Flow

1. Middleware intercepts response from downstream app
2. Checks if Content-Type is `text/html`
3. Extracts body from various response types (Array, Rack::BodyProxy, etc.)
4. Uses TidyMachine to clean/format HTML
5. Prepends HTML5 doctype and updates Content-Length header

## Development Commands

```bash
# Install dependencies
bundle install

# Run tests 
rake spec

# Build gem
rake build

# Run test server
cd spec/request && rackup config.ru

# Test the middleware with curl
curl http://localhost:9292/
```

## Testing

- Tests are located in `spec/` directory
- `spec/model/tidy-machine.rb`: Unit tests for TidyMachine class
- `spec/request/`: Integration test setup with Sinatra app demonstrating middleware usage

The test setup uses a simple Sinatra app (`TidyApp`) that returns unformatted HTML, which gets processed by the middleware.

## Gem Configuration

- Dependencies defined in `rack-tidy-ffi.gemspec`
- Requires `tidy_ffi >= 0.1.4`
- Compatible with Ruby 1.9+