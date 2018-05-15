# config.ru
#!/usr/bin/env ruby
require 'pathname'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path("../Gemfile", Pathname.new(__FILE__).realpath)

require 'rubygems'
require 'bundler/setup'
require 'gollum/app'

# Setup gollum options
help_path = File.expand_path(File.dirname(__FILE__))
Precious::App.set(:gollum_path, help_path)
Precious::App.set(:default_markup, :markdown)
Precious::App.set(:wiki_options, {:universal_toc => false})

run Precious::App
