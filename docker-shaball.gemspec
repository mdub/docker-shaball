# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|

  spec.name          = "docker-shaball"
  spec.version       = "0.1.0"
  spec.authors       = ["Mike Williams", "Luke Carter-Key"]
  spec.email         = ["gpde@rea-group.com"]
  spec.summary       = %q{Create a tar-ball containing some Docker images}
  spec.homepage      = "https://git.realestate.com.au/gpde/docker-shaball"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "clamp", "~> 0.6.4"

  spec.add_development_dependency "bundler", "~> 1.10"

end
