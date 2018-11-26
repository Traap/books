lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'books/version'

Gem::Specification.new do |s|
  s.name          = 'books'
  s.version       = Books::VERSION
  s.summary       = %q{Books reads YAML files to create a list of books.}
  s.description   = %q{The summary said it all.}
  s.authors       = ['Traap']
  s.email         = ['gary.a.howard@mac.com']
  s.homepage      = 'https://github.com/traap/books'
  s.license       = 'BSD-3-Clause'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'http://mygemserver.com'

    s.metadata['homepage_uri'] = s.homepage
    s.metadata['source_code_uri'] = 'http://github.com/traap/books'
    s.metadata['changelog_uri'] = 'https://github.com/traap/books/change.log'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # # Specify which files should be added to the gem when it is released.  The
  # # `git ls-files -z` loads the files in the RubyGem that have been added into
  # # git.
  # s.files = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(lib|test|spec|features)/}) }
  # end

  s.require_paths = ['lib']
  s.files         = Dir['lib/**/*']
  s.test_files    = Dir['spec/**/*.rb']

  s.executables   = %[books]

  s.add_development_dependency 'bundler', '~> 1.17'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'
end
