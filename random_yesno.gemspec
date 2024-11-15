# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6'
  spec.name = 'random_yesno'
  spec.homepage    = 'https://github.com/trangtungn/random-yesno'
  spec.version     = '0.1.2'
  spec.date        = '2022-11-15'
  spec.summary     = 'Generates random yes/no gifs'
  spec.description = 'Generates random yes/no gifs in json format'
  spec.authors     = ['Trang Tung Nguyen']
  spec.email       = 'tungtrangn@gmail.com'
  spec.license = 'MIT'
  spec.files = Dir['{lib}/**/*.rb', 'bin/*', '*.md']
  spec.require_path = 'lib'
  spec.executables << 'yesno'
end
