class TidyMachine
  require 'tidy_ffi'

  DEFAULT_OPTIONS = { :"tidy_mark" => false, :doctype => "omit" }
  
  def initialize(text)
    @text = text    
    # TODO: check doctype html5
    #
    # "<!DOCTYPE html>\n<html>\n<head>\n<title></title>\n</head>\n<body>\na string\n</body>\n</html>\n"
  end

  def tidy
    TidyFFI::Tidy.with_options(:"tidy_mark" => false, indent: "yes", doctype: "omit").new(@text).clean
  end
  
  def self.tidy(text)
    new(text).tidy
  end
end
