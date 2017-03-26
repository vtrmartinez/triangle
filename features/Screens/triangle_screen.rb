class Triangle < Calabash::ABase

  def text_validate(*args)
    args.each do |text|
      wait_for_elements_exist(["* text:'#{text}'"], :timeout => 10)
    end
  end

  def element_validate(*args)
    args.each do |elements|
      wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 10)
    end
  end

  def fill_side1(value)
    element_validate('txtLado1')
    touch("* id:'txtLado1'")
    keyboard_enter_text value
  end

  def fill_side2(value)
    element_validate('txtLado2')
    touch("* id:'txtLado2'")
    keyboard_enter_text value
  end

  def fill_side3(value)
    element_validate('txtLado3')
    touch("* id:'txtLado3'")
    keyboard_enter_text value
  end

  def btn_calculate
    element_validate('btnCalcular')
    touch("* id:'btnCalcular'")
  end

  def validate_message(message)
    text_validate(message)
  end

end
