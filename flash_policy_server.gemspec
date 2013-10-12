# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "flash_policy_server"
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dave hrycyszyn"]
  s.date = "2013-10-12"
  s.description = "\n    This is a simple Ruby-based policy server to serve Flash's crossdomain.xml \n    policy file.\n\n    The web is increasingly realtime, but websockets still aren't supported on \n    older browser clients. Many server push libraries (e.g. socket.io) attempt \n    to use websockets, with a Flash fallback. Others (amqp.js, for instance) \n    are Flash only.\n\n    When using Flash sockets, it's necessary to have a policy server running on \n    port 843, in order to set cross domain policy. This library does the job.\n  "
  s.email = "dave.hrycyszyn@headlondon.com"
  s.executables = ["flash_policy_server"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/flash_policy_server",
    "docker/Dockerfile",
    "docker/crossdomain.xml",
    "flash_policy_server.gemspec",
    "generators/crossdomain.xml",
    "lib/flash_policy_server.rb",
    "test/helper.rb",
    "test/test_flash-policy-server.rb"
  ]
  s.homepage = "http://github.com/futurechimp/flash_policy_server"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "A flash policy server."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

