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

step "Go to New under Orders menu" do
    raise "Unimplemented Step"
  end
  
  step "Select adv. Unit as <arg0>" do |arg0|
    raise "Unimplemented Step"
  end
  
  step "Select a GCI number <arg0>" do |arg0|
    raise "Unimplemented Step"
  end
  
  step "Select an Account" do
    raise "Unimplemented Step"
  end
  
  step "Enter the Order description" do
    raise "Unimplemented Step"
  end
  
  step "Submit the form" do
    raise "Unimplemented Step"
  end
  
  step "New Order should be created" do
    raise "Unimplemented Step"
  end
  
  step "Go to Search under Orders menu" do
    raise "Unimplemented Step"
  end
  
  step "Search for the Order" do
    raise "Unimplemented Step"
  end
  
  step "Change Order description as <arg0>" do |arg0|
    raise "Unimplemented Step"
  end
  
  step "Successful flash message should be displayed" do
    raise "Unimplemented Step"
  end
  
  step "Check Tag name is copied as that of Order description" do
    raise "Unimplemented Step"
  end
  
  step "Order Search page should be displayed" do
    raise "Unimplemented Step"
  end
  
  step "Click Delete button on the Order form" do
    raise "Unimplemented Step"
  end
  
  step "Select Yes on Alert confrimation" do
    raise "Unimplemented Step"
  end
  
  step "Click Add line item button" do
    raise "Unimplemented Step"
  end
  
  step "New Line item form should be displayed" do
    raise "Unimplemented Step"
  end
  
  step "Check Preprint type is <arg0>" do |arg0|
    raise "Unimplemented Step"
  end
  
  step "Enter Distribution as <arg0>" do |arg0|
    raise "Unimplemented Step"
  end
  
  step "Select Global Piece ID" do
    raise "Unimplemented Step"
  end
  
  step "Select a zone" do
    raise "Unimplemented Step"
  end
  
  step "Select a zip code" do
    raise "Unimplemented Step"
  end
  
  step "Select Sub-product as <arg0>, preprint type as <arg1> and production date as <arg2>" do |arg0, arg1, arg2|
    raise "Unimplemented Step"
  end
  
  step "Delete icon for the line item should not be displayed" do
    raise "Unimplemented Step"
  end
  
  step "Delete icon for the line items should be displayed" do 
    raise "Unimplemented Step"
  end
  