Gem::Specification.new do |s|

  s.name        = 'url2png'
  s.version     = '0.0.1'
  s.date        = '2014-07-08'
  s.summary     = "A simple ruby gem wrapping the url2png.com screenshot service API"
  s.authors     = ["Dan Vine"]
  s.email       = 'dan@url2png.com'
  s.files        = Dir.glob("{bin,lib,test}/**/*") + %w(Rakefile README.md)
  s.homepage    = 'https://github.com/danvine/url2png-rb'
  s.license     = 'MIT'

  s.executables << 'url2png'

  s.test_files = ['test/test_url2png.rb']

  # s.add_runtime_dependency 'httparty'
  # s.add_runtime_dependency 'netrc'
  # s.add_runtime_dependency 'thor'

end
