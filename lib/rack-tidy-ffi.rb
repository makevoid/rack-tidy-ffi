path = File.expand_path "../", __FILE__
require "#{path}/tidy-machine"

class RackTidyFFI
  attr_accessor :headers

  def initialize(app)
    @app = app
  end

  def call(env)
    @status, @headers, @response = @app.call(env)
    if @headers["Content-Type"].include? "text/html"
      body = if @response.is_a? Array
        @response.first
      elsif @response.is_a? Rack::BodyProxy
        @response.body.first
      else
        @response.body
      end
      response = TidyMachine.new(body).tidy
      response = "<!DOCTYPE HTML>\n#{response}"
      @headers["Content-Length"] = response.length.to_s
      @response = [response]
    end
    [@status, @headers, @response]
  end

end