require 'spec_helper'

describe 'NavBar', :navbar do
  before do
    @login = Login::Page.new
    @feed = Feed::Page.new
    @nav = Nav::Page.new
    @pr = PerguntasRespostas::Page.new
    @user = Usuario::Page.new
    @dots = MeusPontos::Page.new

    @login.load
  end

  describe 'Validar Pesquisa:', :pesquisa do
    it 'Pesquisar', :search do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.pesquisa_txt.set 'desafio'
      sleep 3
      expect(@feed.card_description.text).to eql 'desafio'
      @nav.logout
    end
  end
  
  describe 'Validar Notificações:', :notificacoes do
    it 'Notificações', :notify do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.notificacoes.click
      expect(@nav.notificacao_title.text).to eql 'Notificações'
      @nav.logout
    end
  end

  describe 'Validar Usuario:', :usuarios do
    it 'Usuário', :usuario do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.user_menu.click
      @nav.u_m_usuario.click
      expect(@user.page_title.text).to eql ''
      @nav.logout
    end

    it 'Meus pontos', :dots do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.user_menu.click
      @nav.u_m_meus_pontos.click
      expect(@dots.page_title.text).to eql 'Meus pontos:'
      @nav.logout
    end

    it 'Seu Perfil', :perfil do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.user_menu.click
      @nav.u_m_seu_perfil.click
      expect(@user.page_title.text).to eql ''
      @nav.logout
    end
  end
  
  describe 'Validar Questões:', :questoes do
    it 'Questões - Fale conosco', :question_fc do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.question.click
      expect(@nav.question_fale_conosco.text).to eql 'Fale conosco'
      @nav.logout
    end
  
    it 'Questões - Como funciona', :question_cf do
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @nav.question.click
      @nav.question_como_funciona.click
      expect(@pr.title.text).to eql 'PERGUNTAS E RESPOSTAS'
    end
  end
end
