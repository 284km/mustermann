$:.unshift File.expand_path("../mustermann/lib", __FILE__)
require "mustermann/version"

Gem::Specification.new do |s|
  s.name                  = "mustermann-shell"
  s.version               = Mustermann::VERSION
  s.author                = "Konstantin Haase"
  s.email                 = "konstantin.mailinglists@googlemail.com"
  s.homepage              = "https://github.com/rkh/flask"
  s.summary               = %q{Shell syntax for Mustermann}
  s.description           = %q{Adds Shell style patterns to Mustermman}
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.0.0'
  s.add_dependency 'mustermann', Mustermann::VERSION
end
