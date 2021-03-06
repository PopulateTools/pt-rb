# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pt"
  spec.version = "1.0.0"
  spec.summary = "PopulateTools idem"
  spec.homepage = "https://github.com/PopulateTools/pt-rb"
  spec.license = "MIT"

  spec.authors = "Fernando Blat"
  spec.email = "fernando@populate.tools"

  spec.files = Dir["*.{md,txt}", "{lib}/**/*"]

  spec.bindir = "."
  spec.executables = %w(pt)
  spec.require_path = "lib"

  spec.add_dependency "commander", "~> 4.5"

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rubocop", "~> 0.82"
end
