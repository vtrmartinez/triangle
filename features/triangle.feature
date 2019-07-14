Feature: Triangle
	As a user
	I want to access the triangle app
	So that I will see some informations about triangle sides

@regression
Scenario: Sending empty form
  Given I launch app
  When I send the form
  Then I must see the message "Preencha todos os campos"

@regression
Scenario: Calculate the sides of equilateral triangle
  Given I launch app
  When I fill the sides of the equilateral triangle
  Then I must see the message "O triângulo é Equilátero"

@regression
Scenario: Calculate the sides of isosceles triangle
  Given I launch app
  When I fill the sides of the isosceles triangle
  Then I must see the message "O triângulo é Isósceles"

@regression
Scenario: Calculate the sides of scalene triangle
  Given I launch app
  When I fill the sides of the scalene triangle
  Then I must see the message "O triângulo é Escaleno"