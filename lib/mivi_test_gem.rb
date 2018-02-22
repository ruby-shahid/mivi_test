require "mivi_test_gem/version"
require 'json'

module MiviTestGem
  def self.get_file_name(file_name)
  	puts "Here are the #{file_name} customer details"
  	file_name = file_name + ".json"
  	file = File.read(file_name)
  	data_hash = JSON.parse(file)
  	phone_number = data_hash["data"]['attributes']['contact-number']
  	email_address = data_hash["data"]['attributes']['email-address']
  	complete_name = data_hash["data"]['attributes']['title'] + " " + data_hash["data"]['attributes']['first-name'] + " " +  data_hash["data"]['attributes']['last-name']
  	product_name = data_hash["included"].last["attributes"]["name"]
  	puts "Phone Number: #{phone_number}"
  	puts "Email Address: #{email_address}"
  	puts "Name: #{complete_name}"
  	puts "Product Name: #{product_name}"
  end
end
