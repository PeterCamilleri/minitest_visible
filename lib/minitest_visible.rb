require "minitest_visible/version"

#This module adds version identification and simple progress tracking to the
#running of tests under the MiniTest gem.
module MinitestVisible

  #Tracking via a module include.
  def self.included(target)
    file = (/^.+(?=:\d+:in)/.match(caller[0])).to_s

    target.send(:define_method, :initialize) do |*all|
      unless defined? $minitest_visible_once_per_run
        $minitest_visible_once_per_run = :done
        puts "MiniTest version = #{MiniTest::Unit::VERSION}"
      end

      unless defined? $minitest_visible_once_per_file
        $minitest_visible_once_per_file = nil
      end

      if $minitest_visible_once_per_file != file
        puts "\nRunning test file: #{File.split(file)[1]}"
        $minitest_visible_once_per_file = file
      end

      super(*all)
    end
  end

  #The older tracking mechanism. Deprecated.
  def self.track(target, file)
    target.send(:define_method, :initialize) do |*all|
      unless defined? $minitest_visible_once_per_run
        $minitest_visible_once_per_run = :done
        puts "MiniTest version = #{MiniTest::Unit::VERSION}"
      end

      if $minitest_visible_once_per_file != file
        puts "\nRunning test file: #{File.split(file)[1]}"
        puts "The track method is deprecated. Use include MinitestVisible instead."
        $minitest_visible_once_per_file = file
      end

      super(*all)
    end

  end

end

