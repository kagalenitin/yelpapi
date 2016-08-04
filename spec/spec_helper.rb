require 'csv'
require 'yaml'
require 'rspec'
require 'rspec/core'
require 'rspec/retry'
require 'rspec_junit_formatter'
require 'logger'
require 'bigdecimal'
require 'bigdecimal/util'
require_relative('helpers/yelp_api_helper')
require 'airborne'
require 'restclient'
require 'yelp'
require 'json'

RSpec.configure do |c|
  CONFIG ||= YAML.load_file(File.expand_path('config/yelp_api.yml', File.dirname(__FILE__)))
  c.filter_run_excluding broken: true
  if ENV['ENV']=='prod'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE unless OpenSSL::SSL::VERIFY_PEER==0
  end
  c.verbose_retry = true
  c.include YelpAPIHelper
end
