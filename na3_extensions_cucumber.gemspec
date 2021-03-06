Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.7'

  s.name = 'na3_extensions_cucumber'
  s.version = '0.1.0'
  s.date = '2011-01-20'
#  s.rubyforge_project = 'na3_extensions_cucumber'

  s.summary = "Setup for using Cucumber in NA3 extensions."
  s.description = "This is a generator for creating the files necessary to run cucumber for a netAdventist3 extension."

  s.authors = ["Nolan Cafferky"]
  s.email = 'nolan@k3integrations.com'
  s.homepage = 'http://k3integrations.com'

#  s.require_paths = %w[lib]
#
#  s.rdoc_options = ["--charset=UTF-8"]
#  s.extra_rdoc_files = %w[README.md LICENSE]
#
  s.add_dependency('cucumber', "= 0.3.98")
  s.add_dependency('webrat', "= 0.5.0")

#  s.add_development_dependency('mocha')

  # = MANIFEST =
  s.files = %w[
LICENSE
README
na3_extensions_cucumber.gemspec
rails_generators/na3_extensions_cucumber_generator.rb
rails_generators/templates/features/factories/extension_factory.rb
rails_generators/templates/features/factories/site_factory.rb
rails_generators/templates/features/step_definitions/na3_core_steps.rb
rails_generators/templates/features/step_definitions/webrat_steps.rb
rails_generators/templates/features/support/env.rb
rails_generators/templates/features/support/hooks.rb
rails_generators/templates/features/support/paths.rb
]
  # = MANIFEST =

#  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
