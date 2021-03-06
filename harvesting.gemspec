
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "harvesting/version"

Gem::Specification.new do |spec|
  spec.name          = "harvesting"
  spec.version       = Harvesting::VERSION
  spec.authors       = ["Ernesto Tagwerker"]
  spec.email         = ["ernesto+github@ombulabs.com"]

  spec.summary       = %q{Ruby wrapper for the Harvest API v2.0}
  spec.description   = %q{Interact with the Harvest API v2.0 from your Ruby application}
  spec.homepage      = "https://github.com/ombulabs/harvesting"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|fixtures|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "http", "~> 3.3", ">= 3.3"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7", ">= 4.7"
  spec.add_development_dependency "byebug", "~> 10.0", ">= 10.0"
  spec.add_development_dependency "vcr", "~> 4.0", ">= 4.0"
  spec.add_development_dependency "webmock", "~> 3.4", ">= 3.4"
end
