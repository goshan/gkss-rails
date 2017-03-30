$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gkss/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gkss-rails"
  s.version     = Gkss::VERSION
  s.authors     = ["goshan"]
  s.email       = ["goshan.hanqiu@gmail.com"]
  s.homepage    = "https://github.com/goshan/gkss-rails"
  s.summary     = "Living style guide based on https://github.com/nadarei/nkss-rails."
  s.description = "A drop-in, easy-to-use, gorgeous-by-default Rails plugin you can put into your projects so you can instantly have cute docs."

  s.files = Dir["{app,config,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"

  s.add_dependency "kss"
  s.add_dependency "ffaker"
  s.add_dependency "bluecloth"
  s.add_dependency "haml"
end
