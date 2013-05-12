# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rb-kqueue}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mathieu Arnold", "Nathan Weizenbaum"]
  s.date = %q{2012-12-03}
  s.description = %q{A Ruby wrapper for BSD's kqueue, using FFI}
  s.email = %q{mat@mat.cc nex342@gmail.com}
  s.homepage = %q{http://github.com/mat813/rb-kqueue}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A Ruby wrapper for BSD's kqueue, using FFI}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0.5.0"])
      s.add_development_dependency(%q<yard>, [">= 0.4.0"])
    else
      s.add_dependency(%q<ffi>, [">= 0.5.0"])
      s.add_dependency(%q<yard>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0.5.0"])
    s.add_dependency(%q<yard>, [">= 0.4.0"])
  end
end
