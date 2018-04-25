# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fog/digitalocean/version"

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_ruby_version = '>= 2.0.0'
  
  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = "fog-digitalocean"
  s.version           = Fog::Digitalocean::VERSION
  s.date              = "2016-03-30"

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = %q{DigitalOcean fog provider gem}
  s.description = %q{DigitalOcean fog provider gem}

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["JJ Asghar", "Suraj Shirvankar"]
  s.email    = ["jj@chef.io", "surajshirvankar@gmail.com"]
  s.homepage = "http://github.com/fog/fog-digitalocean"
  s.license  = "MIT"

  ## This sections is only necessary if you have C extensions.
  # s.require_paths << 'ext'
  # s.extensions = %w[ext/extconf.rb]

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## If your gem includes any executables, list them here.
  #s.executables = ["fog"]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md]

  s.add_development_dependency 'bundler', '~> 1.15'
  s.add_development_dependency 'rake',    '~> 10.0'
  s.add_development_dependency 'shindo',  '~> 0.3'
  s.add_development_dependency 'rubyzip', '~> 1.2.1'
  s.add_development_dependency 'mime-types'
  s.add_development_dependency 'mime-types-data'
  s.add_development_dependency 'rubocop'

  s.add_dependency 'fog-core',  '~> 2.1'
  s.add_dependency 'fog-json',  '~> 1.1'
  s.add_dependency 'fog-xml',   '~> 0.1'
  s.add_dependency 'ipaddress', '~> 0.8'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec,tests}/*`.split("\n")
end
