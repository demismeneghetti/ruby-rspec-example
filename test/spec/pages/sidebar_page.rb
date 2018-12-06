module Sidebar
  class Page < SitePrism::Page
    element :feed_ideias, '#sidebar-timeline'
    element :feed_ideias_options, '.dropdown.dropdown-sidebar'
    element :feed_ideias_options_mais_recentes, '#sidebar-timeline > div > ul > li:nth-child(1) > i'
    element :feed_ideias_options_mais_relevantes, '#sidebar-timeline > div > ul > li:nth-child(2) > i'
    element :feed_ideias_options_favoritos, '#sidebar-timeline > div > ul > li:nth-child(3) > i'
    element :suas_ideias, '#sidebar-my-ideas'
    element :ideias_em_execucao, '#sidebar-execution'
    element :desafios, '#sidebar-challenges'
    element :trocar_pontos, '#sidebar-dots'
    element :destaques, '#sidebar-dashboard'
    element :meu_arquivo, '#sidebar-files'
  end
end