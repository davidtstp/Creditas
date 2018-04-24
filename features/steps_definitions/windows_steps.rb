Dado("que eu esteja no site windows") do
  @windows = WindowsPage.new
  @windows.visit(CONFIG['url_windows'])
  @windows.wait_until_link_nova_aba_visible
  expect(page.html).to include(@windows.texto_home.text)
end

Quando("eu clicar no link Click Here") do
  @windows.link_nova_aba.click
  sleep 3
end

Então("o sistema abre uma nova aba") do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
end

Então("o texto {string} deve ser exibido") do |string|
  expect(@windows.texto_nova_aba.text).to eq(string)
end
