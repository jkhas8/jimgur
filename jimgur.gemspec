$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jimgur/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jimgur"
  s.version     = Jimgur::VERSION
  s.authors     = ["jkhas"]
  s.email       = ["nguyenthai2811@gmail.com"]
  s.homepage    = ""
  s.summary     = "An uploader of Imgur."
  s.description = "Jimgur is a gem which support uploading image to Imgur."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency("faraday", "~> 0.9.2")
  s.add_dependency("faraday-detailed_logger", "~> 2.0")
end
