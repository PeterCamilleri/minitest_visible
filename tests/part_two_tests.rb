# coding: utf-8

gem              'minitest'
require          'minitest/autorun'
require          'minitest_visible'

#Test the monkey patches applied to the Object class.
class PartTwoTester < Minitest::Test

  #Track mini-test progress.
  MinitestVisible.track self, __FILE__

  def test_for_one
    assert_equal(1, 1.0)
  end

  def test_for_two
    assert_equal(2, 2.0)
  end

  def test_for_three
    assert_equal(3, 3.0)
  end

  def test_for_four
    assert_equal(4, 4.0)
  end

  def test_for_five
    assert_equal(5, 5.0)
  end

  def test_for_six
    assert_equal(6, 6.0)
  end

  def test_for_seven
    assert_equal(7, 7.0)
  end

  def test_for_eight
    assert_equal(8, 8.0)
  end

  def test_for_nine
    assert_equal(9, 9.0)
  end

end

