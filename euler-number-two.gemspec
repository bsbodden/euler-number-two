require_relative 'lib/euler/number/two/version'

Gem::Specification.new do |spec|
  spec.name          = "euler-number-two"
  spec.version       = Euler::Number::Two::VERSION
  spec.authors       = ["Euler Project - Problem 2"]
  spec.email         = ["bsbodden@integrallis.com"]

  spec.summary       = %q{Reusable solution to Project Euler Problem 2.}
  spec.description   = %q{By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.}
  spec.homepage      = "https://github.com/bsbodden/euler-number-two"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage 

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
