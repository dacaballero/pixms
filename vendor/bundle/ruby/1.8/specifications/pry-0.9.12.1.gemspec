# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pry}
  s.version = "0.9.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Mair (banisterfiend)", "Conrad Irwin", "Ryan Fitzgerald"]
  s.date = %q{2013-04-21}
  s.default_executable = %q{pry}
  s.description = %q{An IRB alternative and runtime developer console}
  s.email = ["jrmair@gmail.com", "conrad.irwin@gmail.com", "rwfitzge@gmail.com"]
  s.executables = ["pry"]
  s.files = ["spec/Procfile", "spec/cli_spec.rb", "spec/code_object_spec.rb", "spec/code_spec.rb", "spec/command_helpers_spec.rb", "spec/command_integration_spec.rb", "spec/command_set_spec.rb", "spec/command_spec.rb", "spec/commands/amend_line_spec.rb", "spec/commands/bang_spec.rb", "spec/commands/cat_spec.rb", "spec/commands/cd_spec.rb", "spec/commands/disable_pry_spec.rb", "spec/commands/edit_spec.rb", "spec/commands/exit_all_spec.rb", "spec/commands/exit_program_spec.rb", "spec/commands/exit_spec.rb", "spec/commands/find_method_spec.rb", "spec/commands/gem_list_spec.rb", "spec/commands/gist_spec.rb", "spec/commands/help_spec.rb", "spec/commands/hist_spec.rb", "spec/commands/jump_to_spec.rb", "spec/commands/ls_spec.rb", "spec/commands/play_spec.rb", "spec/commands/raise_up_spec.rb", "spec/commands/save_file_spec.rb", "spec/commands/show_doc_spec.rb", "spec/commands/show_input_spec.rb", "spec/commands/show_source_spec.rb", "spec/commands/whereami_spec.rb", "spec/completion_spec.rb", "spec/control_d_handler_spec.rb", "spec/documentation_helper_spec.rb", "spec/editor_spec.rb", "spec/exception_whitelist_spec.rb", "spec/fixtures/candidate_helper1.rb", "spec/fixtures/candidate_helper2.rb", "spec/fixtures/example.erb", "spec/fixtures/example_nesting.rb", "spec/fixtures/show_source_doc_examples.rb", "spec/fixtures/testrc", "spec/fixtures/testrcbad", "spec/fixtures/whereami_helper.rb", "spec/helper.rb", "spec/helpers/bacon.rb", "spec/helpers/mock_pry.rb", "spec/helpers/table_spec.rb", "spec/history_array_spec.rb", "spec/hooks_spec.rb", "spec/indent_spec.rb", "spec/input_stack_spec.rb", "spec/method_spec.rb", "spec/prompt_spec.rb", "spec/pry_defaults_spec.rb", "spec/pry_history_spec.rb", "spec/pry_output_spec.rb", "spec/pry_spec.rb", "spec/run_command_spec.rb", "spec/sticky_locals_spec.rb", "spec/syntax_checking_spec.rb", "spec/wrapped_module_spec.rb", "bin/pry"]
  s.homepage = %q{http://pry.github.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{An IRB alternative and runtime developer console}
  s.test_files = ["spec/Procfile", "spec/cli_spec.rb", "spec/code_object_spec.rb", "spec/code_spec.rb", "spec/command_helpers_spec.rb", "spec/command_integration_spec.rb", "spec/command_set_spec.rb", "spec/command_spec.rb", "spec/commands/amend_line_spec.rb", "spec/commands/bang_spec.rb", "spec/commands/cat_spec.rb", "spec/commands/cd_spec.rb", "spec/commands/disable_pry_spec.rb", "spec/commands/edit_spec.rb", "spec/commands/exit_all_spec.rb", "spec/commands/exit_program_spec.rb", "spec/commands/exit_spec.rb", "spec/commands/find_method_spec.rb", "spec/commands/gem_list_spec.rb", "spec/commands/gist_spec.rb", "spec/commands/help_spec.rb", "spec/commands/hist_spec.rb", "spec/commands/jump_to_spec.rb", "spec/commands/ls_spec.rb", "spec/commands/play_spec.rb", "spec/commands/raise_up_spec.rb", "spec/commands/save_file_spec.rb", "spec/commands/show_doc_spec.rb", "spec/commands/show_input_spec.rb", "spec/commands/show_source_spec.rb", "spec/commands/whereami_spec.rb", "spec/completion_spec.rb", "spec/control_d_handler_spec.rb", "spec/documentation_helper_spec.rb", "spec/editor_spec.rb", "spec/exception_whitelist_spec.rb", "spec/fixtures/candidate_helper1.rb", "spec/fixtures/candidate_helper2.rb", "spec/fixtures/example.erb", "spec/fixtures/example_nesting.rb", "spec/fixtures/show_source_doc_examples.rb", "spec/fixtures/testrc", "spec/fixtures/testrcbad", "spec/fixtures/whereami_helper.rb", "spec/helper.rb", "spec/helpers/bacon.rb", "spec/helpers/mock_pry.rb", "spec/helpers/table_spec.rb", "spec/history_array_spec.rb", "spec/hooks_spec.rb", "spec/indent_spec.rb", "spec/input_stack_spec.rb", "spec/method_spec.rb", "spec/prompt_spec.rb", "spec/pry_defaults_spec.rb", "spec/pry_history_spec.rb", "spec/pry_output_spec.rb", "spec/pry_spec.rb", "spec/run_command_spec.rb", "spec/sticky_locals_spec.rb", "spec/syntax_checking_spec.rb", "spec/wrapped_module_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coderay>, ["~> 1.0.5"])
      s.add_runtime_dependency(%q<slop>, ["~> 3.4"])
      s.add_runtime_dependency(%q<method_source>, ["~> 0.8"])
      s.add_development_dependency(%q<bacon>, ["~> 1.2"])
      s.add_development_dependency(%q<open4>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<guard>, ["~> 1.3.2"])
      s.add_development_dependency(%q<mocha>, ["~> 0.13.1"])
      s.add_development_dependency(%q<bond>, ["~> 0.4.2"])
    else
      s.add_dependency(%q<coderay>, ["~> 1.0.5"])
      s.add_dependency(%q<slop>, ["~> 3.4"])
      s.add_dependency(%q<method_source>, ["~> 0.8"])
      s.add_dependency(%q<bacon>, ["~> 1.2"])
      s.add_dependency(%q<open4>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<guard>, ["~> 1.3.2"])
      s.add_dependency(%q<mocha>, ["~> 0.13.1"])
      s.add_dependency(%q<bond>, ["~> 0.4.2"])
    end
  else
    s.add_dependency(%q<coderay>, ["~> 1.0.5"])
    s.add_dependency(%q<slop>, ["~> 3.4"])
    s.add_dependency(%q<method_source>, ["~> 0.8"])
    s.add_dependency(%q<bacon>, ["~> 1.2"])
    s.add_dependency(%q<open4>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<guard>, ["~> 1.3.2"])
    s.add_dependency(%q<mocha>, ["~> 0.13.1"])
    s.add_dependency(%q<bond>, ["~> 0.4.2"])
  end
end
