# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "nis_faker"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["William Weckl"]
  s.email       = ["william.weckl@gmail.com"]
  s.homepage    = "https://github.com/williamweckl/nis_faker"
  s.summary     = %q{Generate fake brazilian pis/pasep/nit numbers}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake', '>= 0.8.7'
end