# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'black_lattice_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "black_lattice_view_tool"
  spec.version       = BlackLatticeViewTool::VERSION
  spec.authors       = ["zachm1995"]
  spec.email         = ["zachmumbauer@gmail.com"]

  spec.summary       = %q{View specific methods}
  spec.description   = %q{Generates HTML dynamically}
  spec.homepage      = "mumbeezy.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
