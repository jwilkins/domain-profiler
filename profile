#!/usr/bin/env ruby
# encoding: UTF-8
$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/lib')

require 'pp'
require 'domain-profiler'
require 'erb'

profile = DomainProfiler.new(ARGV[0])
puts ERB.new(File.read("view/text")).result
