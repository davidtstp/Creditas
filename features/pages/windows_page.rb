class WindowsPage < SitePrism::Page

  element :texto_home, "h3"
  element :link_nova_aba, :link, "Click Here"
  element :texto_nova_aba, ".example h3"

end
