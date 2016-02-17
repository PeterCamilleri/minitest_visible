# coding: utf-8

#require what ever is being tested here.

gem              'minitest'
require          'minitest/autorun'
require          'minitest_visible'

#Test the testing process.
class TheThingBeingTestedTester < Minitest::Test

  #Track mini-test progress.
  MinitestVisible.track self, __FILE__

  #Actual tests methds go here

end

