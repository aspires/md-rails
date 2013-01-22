# -*- encoding: utf-8 -*-
require File.expand_path("../lib/md-rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "md-rails"
  s.version     = Md::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Austin Spires"]
  s.email       = ["austinspires@gmail.com"]
  s.homepage    = "http://github.com/aspires/md-rails"
  s.summary     = "Instant Markdown, just add... this"
  s.description = "Md-rails gives you and instant Markdown template handler thats compatible with Rails 3. It also comes with some generators so you can automatically build with Markdown, not that you'd ever want to. But still, :boom:!"
  s.licenses    = ["MIT"]

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "redcarpet",     ">= 2.2.2"
  s.add_dependency "activesupport", [">= 3.1", "< 4.1"]
  s.add_dependency "actionpack",    [">= 3.1", "< 4.1"]
  s.add_dependency "railties",      [">= 3.1", "< 4.1"]

  s.add_development_dependency "rails",   [">= 3.1", "< 4.1"]
  s.add_development_dependency "bundler", "~> 1.1"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
