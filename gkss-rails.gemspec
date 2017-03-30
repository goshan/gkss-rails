$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gkss/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "gkss-rails"
  spec.version     = Gkss::VERSION
  spec.authors     = ["goshan"]
  spec.email       = ["goshan.hanqiu@gmail.com"]
  spec.homepage    = "https://github.com/goshan/gkss-rails"
  spec.summary     = "Living style guide based on https://github.com/nadarei/nkss-railspec."
  spec.description = "A drop-in, easy-to-use, gorgeous-by-default Rails plugin you can put into your projects so you can instantly have cute docspec."
  spec.license  = "MIT"

  spec.files = Dir["{app,config,lib}/**/*"] + ["Rakefile", "README.md"]
  spec.test_files = Dir["test/**/*"]

  spec.add_dependency "rails", ">= 3.2.0"

  spec.add_dependency "kss"
  spec.add_dependency "ffaker"
  spec.add_dependency "bluecloth"
  spec.add_dependency "haml"
end
