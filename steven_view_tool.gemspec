# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'steven_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "steven_view_tool"
  spec.version       = StevenViewTool::VERSION
  spec.authors       = ["Steven Adams"]
  spec.email         = ["adamfam@hotmail.com"]

  spec.summary       = %q{Inputs various HTML texts into my applications, copyright included}
  spec.description   = %q{Specifically inputs copyright methods into the application I build using Rails}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
