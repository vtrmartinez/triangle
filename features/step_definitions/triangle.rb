Dado(/^I launch app$/) do
  page(Triangle).text_validate('TrianguloApp')
  page(Triangle).element_validate('content', 'layout_componentes')
end

Quando(/^I send the form$/) do
  page(Triangle).btn_calculate
end

Quando(/^I fill the sides of the equilateral triangle$/) do
  page(Triangle).fill_side1(1)
  page(Triangle).fill_side2(1)
  page(Triangle).fill_side3(1)
  step 'I send the form'
end

Quando(/^I fill the sides of the isosceles triangle$/) do
  page(Triangle).fill_side1(1)
  page(Triangle).fill_side2(1)
  page(Triangle).fill_side3(2)
  step 'I send the form'
end

Quando(/^I fill the sides of the scalene triangle$/) do
  page(Triangle).fill_side1(1)
  page(Triangle).fill_side2(2)
  page(Triangle).fill_side3(3)
  step 'I send the form'
end

Então(/^I must see the message "([^"]*)"$/) do |message|
  page(Triangle).validate_message(message)
end
