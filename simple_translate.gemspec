$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_translate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_translate"
  s.version     = SimpleTranslate::VERSION
  s.authors     = ["Anton Kopylov"]
  s.email       = ["anton@kopylov.net"]
  s.homepage    = "http://kopylov.net"
  s.summary     = "Simple models translator."
  s.description = "Very simple models translator."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_development_dependency "sqlite3"
end