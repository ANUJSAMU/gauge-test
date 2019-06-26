require 'test/unit'
require_relative './utilities/driver'

include Test::Unit::Assertions
include ::Driver


step 'Authenticate to the application' do ||
    driver.find_element(:id, "user_user_id").send_keys(ENV['username'])
    driver.find_element(:id, "user_password").send_keys(ENV['password'])
    driver.find_element(:name, "commit").click
    assert_equal 'Preprint - Home', driver.title
end