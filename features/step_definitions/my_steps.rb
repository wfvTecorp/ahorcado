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



Given(/^visito la pagina de Juego$/) do
 visit '/juego'
end

When(/^ingreso una letra "(.*?)" en el campo de "(.*?)"$/) do |valor,letra|
  fill_in(letra, :with => valor)
end

When(/^presiono el boton para "(.*?)"$/) do |btnJugar|
 click_button(btnJugar)
end
 
Then(/^deberia verificar si existe la letra en la "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
