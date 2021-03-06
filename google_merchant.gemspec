$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "google_merchant/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "google_merchant"
  s.version     = GoogleMerchant::VERSION
  s.authors     = ["Denis Udovenko"]
  s.email       = ["denis.e.udovenko@gmail.com"]
  s.homepage    = ""
  s.summary     = "Simple gem for creating Google Merchant feed"
  s.description = "Allows to add Google Merchant feed in Atom format to your application by adding its own controller or file generation"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  
  s.add_development_dependency 'rails', '4.1.5'
  s.add_dependency 'awesome_nested_set'
end
