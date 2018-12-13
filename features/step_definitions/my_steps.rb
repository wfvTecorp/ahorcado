Given(/^visito la pagina principal$/) do
   visit '/'
end

When(/^ingreso "(.*?)" en el campo "(.*?)"$/) do |valor, palabra|
  fill_in(palabra, :with => valor)
end

When(/^presiono el boton "(.*?)"$/) do |boton|
   click_button(boton)
end

Then(/^deberia ver la palabra "(.*?)"$/) do |palabra|
  last_response.body.should =~ /#{palabra}/m
end
#When /^I click on "(.*)"$/ do |text|
When /^presiono el link "(.*)"$/ do |text|
  click_link(text)
end

