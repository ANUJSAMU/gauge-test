require 'test/unit'
require_relative './utilities/driver'

include Test::Unit::Assertions
include ::Driver

step 'Go to the Search menu under Orders' do ||
    driver.find_element(:link_text, "Orders").click
    driver.find_element(:link_text, "Search").click
    assert(driver.find_element(:xpath, "//h3[text()='Search for Orders']").displayed?)
end
step 'Enter the Order number <order_no> and select the order' do |order_no|
    driver.find_element(:id, "order_number").send_keys(order_no)
    result = driver.find_element(:xpath,'//div[@class="tt-menu tt-open" and contains(@style, "display: block")]')
    driver.action.move_to(result).perform
end
step 'Order edit form should be displayed for Order <order_number>' do |order_number|
    assert (driver.page_source.include? (order_number))
end