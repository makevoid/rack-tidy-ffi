require 'sinatra/base'

class TidyApp < Sinatra::Base
  get '/' do
    "<ul><li>hello</li><li>world</li></ul>"
  end
end
