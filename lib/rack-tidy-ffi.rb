path = File.expand_path "../", __FILE__
require "#{path}/tidy-machine"

class RackTidyFFI
  attr_accessor :headers
  
  def initialize(app)
    @app = app       
  end             
  
  def call(env)   
    @status, @headers, @response = @app.call(env)
    # TODO: include all response attributes... needed?
    # response_body = ""
    # response_body = @response.each { |part| response_body += part }
    if @headers["Content-Type"].include? "text/html"
      response = TidyMachine.new(@response.first).tidy
      response = "<!DOCTYPE HTML>\n#{response}"
      @headers["Content-Length"] = response.length.to_s
      @response = [response]
    end
    [@status, @headers, @response]
  end            
  
end
