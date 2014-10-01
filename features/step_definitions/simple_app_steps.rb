Then(/^say_hello says "(.*?)"$/) do |arg1|
  # Both the must_equal and expect format give useful failure information
  say_hello.must_equal arg1
  # expect(say_hello).to_equal arg1
end

Then(/^say_bye says "(.*?)"$/) do |arg1|
  # Both the must_equal and expect format give useful failure information
  say_bye.must_equal arg1
  # expect(say_bye).to_equal arg1
end
