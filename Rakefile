#!/usr/bin/env rake
# coding: utf-8

require 'rdoc/task'
require "bundler/gem_tasks"

#Generate internal documentation with rdoc.
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = "rdoc"

  #List out all the files to be documented.
  rdoc.rdoc_files.include("lib/**/*.rb", "license.txt", "README.md")

  #Make all access levels visible.
  rdoc.options << '--visibility' << 'private'
  #rdoc.options << '--verbose'
  #rdoc.options << '--coverage-report'

  #Set a title.
  rdoc.options << '--title' << 'fOOrth Language Internals'

end

desc "Run a scan for smelly code!"
task :reek do |t|
  `reek --no-color lib > reek.txt`
end

desc "What version of fOOrth is this?"
task :vers do |t|
  puts
  puts "Minitest_visible version = #{MinitestVisible::VERSION}"
end
