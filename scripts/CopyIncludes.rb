#!/usr/bin/ruby

require 'fileutils'
require 'pathname'
require 'optparse'

options = {}

def run( destination )
  @include_dir = File.expand_path("../../include/CppUTest", __FILE__)
  FileUtils.cp_r( @include_dir, destination )

  @include_dir = File.expand_path("../../include/CppUTestExt", __FILE__)
  FileUtils.cp_r( @include_dir, destination )

  @include_dir = File.expand_path("../../include/Platforms", __FILE__)
  FileUtils.cp_r( @include_dir, destination )
end

ARGV

run( ARGV[0] )

# pn = Pathname.new("/usr/bin/ruby")
#
# FileUtils.copy_entry( $source, ARGV[0], preserve = true, dereference = false, remove_destination = true)
