require 'test/unit'
require_relative './driver'

include Test::Unit::Assertions
include ::Driver

step 'Go to the Preprint website' do ||
  driver.navigate.to ENV['APP_URL']  
  assert_equal 'Gannett - Login', driver.title
end