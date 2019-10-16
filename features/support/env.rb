require 'watir'
require 'watirsome'
require 'rspec/expectations'
require 'rspec/collection_matchers'
require 'require_all'
require 'irb'
require_rel 'lib'

@settings = YAML.load(File.open('config/settings.yml'))
Testing.browser = Watir::Browser.new(ENV['BROWSER']&.to_sym || @settings[:browser])
Testing.browser.window.maximize

World(Testing::Methods)

at_exit { Testing.browser&.close }
