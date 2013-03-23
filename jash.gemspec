# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "jash"
  spec.version       = "0.01"
  spec.authors       = ["Jingjing Duan"]
  spec.email         = ["duanjingjing@gmail.com"]
  spec.description   = %q{Use hash like a JSON object}
  spec.summary       = %q{Use hash like a JSON object}
  spec.homepage      = "https://github.com/jduan/jash"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13.0"
end
