#encoding: utf-8
#language: pt

Funcionalidade: Triângulo
	Eu como usuário
	Quero acessar o aplicativo TrianguloApp
	Para obter informações de um triângulo

@regression
Cenário: Enviar formulário em branco
  Dado que acesso o aplicativo
  Quando enviar o formulário
  Então devo visualizar a mensagem "Preencha todos os campos"

@regression
Cenário: Calcular os lados de um triângulo equilátero
  Dado que acesso o aplicativo
  Quando preencher os dados de um triângulo equilátero
  Então devo visualizar a mensagem "O triângulo é Equilátero"

@regression
Cenário: Calcular os lados de um triângulo isósceles
  Dado que acesso o aplicativo
  Quando preencher os dados de um triângulo isósceles
  Então devo visualizar a mensagem "O triângulo é Isósceles"

@regression
Cenário: Calcular os lados de um triângulo escaleno
  Dado que acesso o aplicativo
  Quando preencher os dados de um triângulo escaleno
  Então devo visualizar a mensagem "O triângulo é Escaleno"
