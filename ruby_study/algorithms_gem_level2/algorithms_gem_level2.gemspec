require_relative 'lib/algorithms_gem_level2/version'

Gem::Specification.new do |spec|
  spec.name          = "algorithms_gem_level2"
  spec.version       = AlgorithmsGemLevel2::VERSION
  spec.authors       = ["Caio Teixeira"]
  spec.email         = ["caioteixeiraaa@gmail.com"]

  spec.summary       = "gem for algorithms from level 2"
  spec.description   = "algorithms and problems from level 2 of geek for geeks"
  spec.homepage      = "https://github.com/CaioHTeixeira/my_study_plan."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/CaioHTeixeira/my_study_plan."
  spec.metadata["changelog_uri"] = "https://github.com/CaioHTeixeira/my_study_plan."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
