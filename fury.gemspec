Gem::Specification.new do |gem|
  gem.name        = 'fury'
  gem.version     = '0.0.0'
  gem.date        = '2018-02-01'
  gem.summary     = "Fury!"
  gem.description = "A simple shell command gem"
  gem.authors     = ["Ahsan Nabi Dar"]
  gem.email       = 'ahsan.dar@live.com'
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.homepage    = 'https://github.com/ahsandar/fury'
end
