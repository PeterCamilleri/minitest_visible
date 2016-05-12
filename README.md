# MinitestVisible

This gem provides some very basic and mostly unobtrusive visibility to the
progress of a minitest test run. I have found that on more than one occasion,
cut and paste errors have caused my testing to not run as expected. This
little gem gives me the warm and fuzzy security blanket of seeing each test's
filename as it is run and knowing what version of minitest is in charge without
all the chaos of going fully verbose. A sample run follows:

    C:\Sites\fOOrth>rake test
    Run options: --seed 32173

    # Running tests:

    MiniTest version = 4.7.5

    Running test file: array_test.rb
    .
    Running test file: complex_test.rb
    .
    Running test file: context_tests.rb
    ........
    Running test file: core_tests.rb
    .........
    Running test file: ctrl_stack_tests.rb
    .
    Running test file: data_stack_tests.rb
    .....
    Running test file: file_source_tests.rb
    ....
    Running test file: hash_test.rb
    .
    Running test file: numeric_test.rb
    ..........
    Running test file: object_test.rb
    ...........
    Running test file: parser_tests.rb
    ........
    Running test file: rational_test.rb
    .
    Running test file: string_test.rb
    ...
    Running test file: string_source_tests.rb
    ....
    Running test file: symbol_map_tests.rb
    ...

    Finished tests in 0.038003s, 1841.9598 tests/s, 11683.2882 assertions/s.

    70 tests, 444 assertions, 0 failures, 0 errors, 0 skips

## Installation

Add this line to your application's Gemfile:

    gem 'minitest_visible'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest_visible

The minitest_visible gem is at: ( https://rubygems.org/gems/minitest_visible )


## Usage

Simply add the line:

    require 'minitest_visible'

Then, in the body of your test class add:

    include MinitestVisible

That is all that is needed. Test output will now be decorated as shown above.
While this is a bit more ceremony than is desirable, test files have a fair bit
of boilerplate stuff as it is. The template folder has the file xyzzy_test.rb
which is my template for creating test files. Copy, rename and use as you wish.

## Compatibility

The API of this gem is new compared to how it was under versions before 0.1.0.
Code using the older API will continue to work and tests will not suddenly
break (at least not due to minitest_visible). However, test files using the
obsolete API will now generate the following warning:

    The track method is deprecated. Use include MinitestVisible instead.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
