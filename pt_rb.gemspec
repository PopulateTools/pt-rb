Gem::Specification.new do |spec|
  spec.name          = "pg_rb"
  spec.version       = "1.0.0"
  spec.summary       = "PopulateTools idem"
  spec.homepage      = "https://github.com/PopulateTools/pt-rb"
  spec.license       = "MIT"

  spec.authors       = "Fernando Blat"
  spec.email         = "fernando@populate.tools"

  spec.files         = Dir["*.{md,txt}", "{actions}/**/*"]

  spec.bindir        = "."
  spec.executables   = ["pt"]

  spec.add_dependency "commander", "~> 4.5"

  spec.add_development_dependency "bundler", "~> 2"
end

