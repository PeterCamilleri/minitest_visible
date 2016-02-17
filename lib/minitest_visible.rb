require "minitest_visible/version"

#This module adds version identification and simple progress tracking to the
#running of tests under the MiniTest gem.
module MinitestVisible

  def self.track(target, file)
    action = lambda do |*all|
      unless defined? $minitest_visible_once_per_run
        $minitest_visible_once_per_run = :done
        puts "MiniTest version = #{MiniTest::Unit::VERSION}"
      end

      if $minitest_visible_once_per_file != file
        puts "\nRunning test file: #{File.split(file)[1]}"
        $minitest_visible_once_per_file = file
      end

      super(*all)
    end

    target.send(:define_method, :initialize, &action)
  end

end

