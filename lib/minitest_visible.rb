require "minitest_visible/version"

#This module adds version identification and simple progress tracking to the
#running of tests under the MiniTest gem.
module MinitestVisible

  def initialize(*all)
    unless defined? $minitest_visible_once_per_run
      $minitest_visible_once_per_run = :done
      puts "MiniTest version = #{MiniTest::Unit::VERSION}, " +
           "MinitestVisible version = #{MinitestVisible::VERSION}"
    end

    if $minitest_visible_once_per_file != __FILE__
      puts "\nRunning test file: #{File.split(__FILE__)[1]}"
      $minitest_visible_once_per_file = __FILE__
    end

    super(*all)
  end

end
