# -*- encoding: utf-8 -*-
# stub: twitter-bootswatch-rails 3.3.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter-bootswatch-rails".freeze
  s.version = "3.3.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["scottvrosenthal".freeze]
  s.date = "2015-06-16"
  s.description = "twitter-bootswatch-rails gem integrates TWBS Bootstrap for Rails Asset Pipeline with less-rails".freeze
  s.email = ["sr7575@gmail.com".freeze]
  s.homepage = "https://github.com/scottvrosenthal/twitter-bootswatch-rails".freeze
  s.licenses = ["MIT".freeze, "GPL-2".freeze]
  s.post_install_message = "Important: You may need to add a javascript runtime to your Gemfile in order for bootstrap's LESS files to compile to CSS. \n\n**********************************************\n\nExecJS supports these runtimes:\n\ntherubyracer - Google V8 embedded within Ruby\n\ntherubyrhino - Mozilla Rhino embedded within JRuby\n\nNode.js\n\n**********************************************".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.3".freeze
  s.summary = "TWBS Bootstrap integration gem for the Rails Asset Pipeline using less-rails".freeze

  s.installed_by_version = "2.6.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
      s.add_runtime_dependency(%q<less-rails>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<execjs>.freeze, [">= 2.3.0", "~> 2.3"])
      s.add_development_dependency(%q<rails>.freeze, ["< 5.0", ">= 3.1"])
      s.add_development_dependency(%q<therubyracer>.freeze, [">= 0.12.1", "~> 0.12"])
    else
      s.add_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
      s.add_dependency(%q<less-rails>.freeze, ["~> 2.4"])
      s.add_dependency(%q<execjs>.freeze, [">= 2.3.0", "~> 2.3"])
      s.add_dependency(%q<rails>.freeze, ["< 5.0", ">= 3.1"])
      s.add_dependency(%q<therubyracer>.freeze, [">= 0.12.1", "~> 0.12"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
    s.add_dependency(%q<less-rails>.freeze, ["~> 2.4"])
    s.add_dependency(%q<execjs>.freeze, [">= 2.3.0", "~> 2.3"])
    s.add_dependency(%q<rails>.freeze, ["< 5.0", ">= 3.1"])
    s.add_dependency(%q<therubyracer>.freeze, [">= 0.12.1", "~> 0.12"])
  end
end
