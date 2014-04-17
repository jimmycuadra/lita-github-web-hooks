Gem::Specification.new do |spec|
  spec.name          = "lita-github-web-hooks"
  spec.version       = "0.0.1"
  spec.authors       = ["Jimmy Cuadra"]
  spec.email         = ["jimmy@jimmycuadra.com"]
  spec.description   = %q{GitHub web hook integration for Lita.}
  spec.summary       = %q{Allows Lita to receive various event notifications from GitHub.}
  spec.homepage      = "https://github.com/jimmycuadra/lita-github-web-hooks"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.7"
  spec.add_runtime_dependency "netaddr", ">= 1.5.0"
  spec.add_runtime_dependency "i18n", ">= 0.6.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
end
