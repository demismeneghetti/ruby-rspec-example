module Desafios
  class Page < SitePrism::Page
    element :page_title, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-6.col-md-6.col-lg-6.d-flex.align-items-center.no-padding-left'
  end
end