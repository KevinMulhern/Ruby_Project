specfiles = File.join("**", "*_spec.rb")
Dir.glob(specfiles) { |filename|
File.open(filename, "a") { |f|
f << "\n"
f << "RSpec.configure do |config|\n"
f << "config.expect_with :rspec do |c|\n"
f << "c.syntax = [:should, :expect]\n"
f << "end\n"
f << "end"
}}