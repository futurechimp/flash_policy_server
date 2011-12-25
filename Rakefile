# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "flash_policy_server"
  gem.homepage = "http://github.com/futurechimp/flash_policy_server"
  gem.license = "MIT"
  gem.summary = %Q{A flash policy server.}
  gem.description = %Q{
    This is a simple Ruby-based policy server to serve Flash's crossdomain.xml 
    policy file.

    The web is increasingly realtime, but websockets still aren't supported on 
    older browser clients. Many server push libraries (e.g. socket.io) attempt 
    to use websockets, with a Flash fallback. Others (amqp.js, for instance) 
    are Flash only.

    When using Flash sockets, it's necessary to have a policy server running on 
    port 843, in order to set cross domain policy. This library does the job.
  }
  gem.email = "dave.hrycyszyn@headlondon.com"
  gem.authors = ["Dave hrycyszyn"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
