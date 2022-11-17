# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 3.1'
  spec.name = 'random_yesno'
  spec.homepage    = 'https://i-love-ruby.gitlab.io'
  spec.version     = '0.1.0'
  spec.date        = '2022-11-15'
  spec.summary     = 'Generates random yes/no gifs'
  spec.description = 'Generates random yes/no gifs in json format'
  spec.authors     = ['Trang Tung Nguyen']
  spec.email       = 'tungtrangn@gmail.com'
  s.license = 'MIT'
  spec.files = Dir['{lib}/**/*.rb', 'bin/*', '*.md']
  spec.require_path = 'lib'
  spec.executables << 'yesno'
  spec.test_files << 'test/test_random_yesno.rb'
end
