# -*- encoding: utf-8 -*-
# stub: twitter-bootswatch-rails-helpers 3.3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter-bootswatch-rails-helpers".freeze
  s.version = "3.3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["scottvrosenthal".freeze]
  s.date = "2015-02-16"
  s.description = "twitter-bootswatch-rails-helpers gem provides common view helpers for use with the twitter-bootswatch-rails & less-rails gems".freeze
  s.email = ["sr7575@gmail.com".freeze]
  s.homepage = "https://github.com/scottvrosenthal/twitter-bootswatch-rails-helpers".freeze
  s.licenses = ["MIT".freeze, "GPL-2".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.3".freeze
  s.summary = "Bootswatch Rails Helpers gem for use with the twitter-bootswatch-rails & less-rails gems".freeze

  s.installed_by_version = "2.6.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<twitter-bootswatch-rails>.freeze, [">= 3.3.2", "~> 3.3"])
    else
      s.add_dependency(%q<twitter-bootswatch-rails>.freeze, [">= 3.3.2", "~> 3.3"])
    end
  else
    s.add_dependency(%q<twitter-bootswatch-rails>.freeze, [">= 3.3.2", "~> 3.3"])
  end
end
