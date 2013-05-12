# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{guard-rspec}
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = %q{2013-05-07}
  s.description = %q{Guard::RSpec automatically run your specs (much like autotest).}
  s.email = ["thibaud@thibaud.me"]
  s.homepage = %q{http://rubygems.org/gems/guard-rspec}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{guard-rspec}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Guard gem for RSpec}

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.8"])
      s.add_runtime_dependency(%q<rspec>, ["~> 2.13"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
    else
      s.add_dependency(%q<guard>, [">= 1.8"])
      s.add_dependency(%q<rspec>, ["~> 2.13"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.8"])
    s.add_dependency(%q<rspec>, ["~> 2.13"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
  end
end
