# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parse/server/sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "parse-server-sdk"
  spec.version       = Parse::Server::SDK::VERSION
  spec.authors       = ["Anthony Persaud"]
  spec.email         = ["persaud@modernistik.com"]

  spec.summary       = %q{Parse Server Ruby SDK bundle.}
  spec.description   = %q{Parse Server Ruby SDK bundle. This is a wrapper gem for several Ruby frameworks and plugins that work with Parse Server.}
  spec.homepage      = "https://www.modernistik.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "parse-stack", '~> 1'
  spec.add_runtime_dependency "parse-stack-async", '< 2'

end