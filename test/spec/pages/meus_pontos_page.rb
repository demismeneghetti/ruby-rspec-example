module MeusPontos
  class Page < SitePrism::Page
    element :page_title, 'body > app-root > div > div.main-panel > div > app-wallet > div > div > div.row > div.col-md-5.d-flex.align-items-center.margin-mobile > h2'
  end
end