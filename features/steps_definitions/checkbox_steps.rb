Dado("que eu esteja no site do dynamic_controls") do
  @checkbox = CheckboxPage.new
  @checkbox.visit(CONFIG['url_checkbox'])
  @checkbox.wait_until_botao_visible
end

Quando("eu clicar no botão de remover checkbox") do
  @checkbox.botao.click
end

Então("o sistema retorna a mensagem de feedback da remoção {string}") do |string|
  expect(@checkbox.msg_retorno.text).to eq("#{string}")
end

Então("o checkbox não deve ficar visivel") do
  expect { @checkbox.checkbox }.to raise_error(Capybara::ElementNotFound)
end

Quando("eu clicar no botão de adicionar checkbox") do
  @checkbox.botao.click
  sleep 5
  @checkbox.botao.click
end

Então("o sistema retorna a mensagem de feedback da adição {string}") do |string|
  expect(@checkbox.msg_retorno.text).to eq("#{string}")
end

Então("o checkbox fica visivel") do
  checkbox = @checkbox.checkbox.visible?
  expect(checkbox).to be true
end
