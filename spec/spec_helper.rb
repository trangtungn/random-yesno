# frozen_string_literal: true

require 'bundler/setup'
require 'random_yesno'
require 'rspec/json_expectations'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!
end
