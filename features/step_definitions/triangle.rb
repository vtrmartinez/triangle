Dado(/^que acesso o aplicativo$/) do
  page(Triangle).text_validate('TrianguloApp')
  page(Triangle).element_validate('content', 'layout_componentes')
end

Quando(/^enviar o formulário$/) do
  page(Triangle).btn_calculate
end

Quando(/^preencher os dados de um triângulo equilátero$/) do
  page(Triangle).fill_side1('1')
  page(Triangle).fill_side2('1')
  page(Triangle).fill_side3('1')
  step 'enviar o formulário'
end

Quando(/^preencher os dados de um triângulo isósceles$/) do
  page(Triangle).fill_side1('1')
  page(Triangle).fill_side2('1')
  page(Triangle).fill_side3('2')
  step 'enviar o formulário'
end

Quando(/^preencher os dados de um triângulo escaleno$/) do
  page(Triangle).fill_side1('1')
  page(Triangle).fill_side2('2')
  page(Triangle).fill_side3('3')
  step 'enviar o formulário'
end

Então(/^devo visualizar a mensagem "([^"]*)"$/) do |message|
  page(Triangle).validate_message(message)
end
