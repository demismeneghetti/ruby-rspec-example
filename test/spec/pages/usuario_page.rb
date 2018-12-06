module Usuario
  class Page < SitePrism::Page
    element :page_title, 'body > app-root > div > div.main-panel > div > app-user-edit > div > form > div.card.card-user > div.content > div.author > h4'
  end
end