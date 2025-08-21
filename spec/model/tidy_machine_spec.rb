require_relative '../../lib/tidy-machine'

describe TidyMachine do
  it "should tidy the output without adding doctype and meta tags" do
    output = TidyFFI::Tidy.with_options(:"tidy_mark" => false, doctype: "omit").new("hello").clean
    fixture = "<html>\n<head>\n<title></title>\n</head>\n<body>\nhello\n</body>\n</html>\n" 
    expect(output).to eq(fixture)
  end
end