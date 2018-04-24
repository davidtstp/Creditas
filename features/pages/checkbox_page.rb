class CheckboxPage < SitePrism::Page

  element :botao, "[autocomplete]"
  element :checkbox, "input#checkbox", wait: false
  element :msg_retorno, "#message"

end
