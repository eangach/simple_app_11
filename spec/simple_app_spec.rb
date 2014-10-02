require_relative 'spec_helper'

describe 'simple passing test' do
  it 'passes' do
    say_hello.must_equal 'Hello'
    # expect(say_hello).to_equal 'Hello'
  end
end

describe 'simple failing test' do
  it 'fails' do
    # Only the must_equal format gives the file and line where the failure occurred
    say_bye.must_equal 'Bye'
    # expect(say_bye).to_equal 'Bye'
  end
end
