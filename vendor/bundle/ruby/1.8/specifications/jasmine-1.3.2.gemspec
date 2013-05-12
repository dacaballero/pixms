# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jasmine}
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rajan Agaskar", "Christian Williams", "Davis Frank"]
  s.date = %q{2013-03-11}
  s.default_executable = %q{jasmine}
  s.description = %q{Test your JavaScript without any framework dependencies, in any environment, and with a nice descriptive syntax.}
  s.email = %q{jasmine-js@googlegroups.com}
  s.executables = ["jasmine"]
  s.files = ["spec/application_integration_spec.rb", "spec/application_spec.rb", "spec/asset_expander_spec.rb", "spec/asset_pipeline_mapper_spec.rb", "spec/base_spec.rb", "spec/configuration_spec.rb", "spec/dependencies_spec.rb", "spec/fixture/Rakefile", "spec/jasmine_command_line_tool_rakeless_spec.rb", "spec/jasmine_command_line_tool_spec.rb", "spec/jasmine_pojs_spec.rb", "spec/jasmine_rails2_spec.rb", "spec/jasmine_rails3_spec.rb", "spec/jasmine_self_test_spec.rb", "spec/page_spec.rb", "spec/path_expander_spec.rb", "spec/path_mapper_spec.rb", "spec/rack/jasmine/runner_spec.rb", "spec/results_processor_spec.rb", "spec/results_spec.rb", "spec/rspec_formatter_spec.rb", "spec/server_spec.rb", "spec/spec_helper.rb", "spec/yaml_config_parser_spec.rb", "bin/jasmine"]
  s.homepage = %q{http://pivotal.github.com/jasmine/}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{JavaScript BDD framework}
  s.test_files = ["spec/application_integration_spec.rb", "spec/application_spec.rb", "spec/asset_expander_spec.rb", "spec/asset_pipeline_mapper_spec.rb", "spec/base_spec.rb", "spec/configuration_spec.rb", "spec/dependencies_spec.rb", "spec/fixture/Rakefile", "spec/jasmine_command_line_tool_rakeless_spec.rb", "spec/jasmine_command_line_tool_spec.rb", "spec/jasmine_pojs_spec.rb", "spec/jasmine_rails2_spec.rb", "spec/jasmine_rails3_spec.rb", "spec/jasmine_self_test_spec.rb", "spec/page_spec.rb", "spec/path_expander_spec.rb", "spec/path_mapper_spec.rb", "spec/rack/jasmine/runner_spec.rb", "spec/results_processor_spec.rb", "spec/results_spec.rb", "spec/rspec_formatter_spec.rb", "spec/server_spec.rb", "spec/spec_helper.rb", "spec/yaml_config_parser_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rack>, [">= 1.2.1"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<json_pure>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<anchorman>, [">= 0"])
      s.add_runtime_dependency(%q<jasmine-core>, ["~> 1.3.1"])
      s.add_runtime_dependency(%q<rack>, ["~> 1.0"])
      s.add_runtime_dependency(%q<rspec>, [">= 1.3.1"])
      s.add_runtime_dependency(%q<selenium-webdriver>, [">= 0.1.3"])
    else
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rack>, [">= 1.2.1"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<json_pure>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<anchorman>, [">= 0"])
      s.add_dependency(%q<jasmine-core>, ["~> 1.3.1"])
      s.add_dependency(%q<rack>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, [">= 1.3.1"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0.1.3"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rack>, [">= 1.2.1"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<json_pure>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<anchorman>, [">= 0"])
    s.add_dependency(%q<jasmine-core>, ["~> 1.3.1"])
    s.add_dependency(%q<rack>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, [">= 1.3.1"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0.1.3"])
  end
end
