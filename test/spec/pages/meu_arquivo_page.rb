module MeuArquivo
  class Page < SitePrism::Page
    element :page_title, 'div[class="col-6 col-md-6 col-lg-6 d-flex align-items-center no-padding-left"]'
  end
end