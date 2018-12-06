module Feed
  class Page < SitePrism::Page
    element :page_title, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-6.col-md-6.col-lg-6.d-flex.align-items-center.no-padding-left'
    element :toastr_titulo, '.toast-title'
    element :toastr_mensagem, '.toast-message'
    element :card, '.idea-item'
    element :card_description, '#read-more0'
  end
end
