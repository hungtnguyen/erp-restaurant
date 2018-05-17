$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/restaurant/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_restaurant"
  s.version     = Erp::Restaurant::VERSION
  s.authors     = ["Hung Nguyen"]
  s.email       = ["1633514@hcmut.edu.vn"]
  s.homepage    = "http://hoangkhang.com.vn"
  s.summary     = "Restaurant of project 3"
  s.description = "Restaurant of project 3"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
