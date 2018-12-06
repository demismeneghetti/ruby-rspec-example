module Nav
  class Page < SitePrism::Page
    element :titulo, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-6.col-md-6.col-lg-6.d-flex.align-items-center.no-padding-left > h5'
    element :pesquisa_txt, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-6.col-md-6.col-lg-6.d-flex.align-items-center.no-padding-left > div > input'
    element :nova_ideia_btn, '#newIdea'
    element :notificacoes, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-4.col-md-5.col-lg-6.d-flex.justify-content-end > ul > li:nth-child(1)'
    element :notificacao_title, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-4.col-md-5.col-lg-6.d-flex.justify-content-end > ul > li.nav-item.nav-option-item.dropdown.show > div > div > div.header > h6'
    element :question, '.fa.fa-question-circle'
    element :question_fale_conosco, 'a[href="mailto:inovacao@duratex.com.br?subject=Suporte Imagine"]'
    element :question_como_funciona, 'a[href="http://inovacao.duratex.com.br/perguntas-e-respostas/"]'
    element :user_menu, '#navbarDropdownMenuLink'
    element :u_m_usuario, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-4.col-md-5.col-lg-6.d-flex.justify-content-end > ul > li.nav-item.nav-option-item.dropdown.show > div > a:nth-child(1)'
    element :u_m_meus_pontos, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-4.col-md-5.col-lg-6.d-flex.justify-content-end > ul > li.nav-item.nav-option-item.dropdown.show > div > div > a:nth-child(1)'
    element :u_m_seu_perfil, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-4.col-md-5.col-lg-6.d-flex.justify-content-end > ul > li.nav-item.nav-option-item.dropdown.show > div > a:nth-child(4)'
    element :logoff, '#logout'

    def nova_ideia
      nova_ideia_btn.click
      sleep 3
    end

    def logout
      user_menu.click
      sleep 3
      logoff.click
    end
  end
end
