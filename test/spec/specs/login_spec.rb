require 'spec_helper'

describe 'Login', :login do
  before do
    @login = Login::Page.new
    @feed = Feed::Page.new
    @nav = Nav::Page.new
    @login.load
  end

  describe 'sem sucesso:' do
    it 'usuário e senha em branco' do
      @login.com('', '')
      expect(@login.msg_user_error.text).to eql '* Matrícula ou e-mail é obrigatório'
      expect(@login.msg_pass_error.text).to eql '* Senha é obrigatória'
    end

    it 'usuario em branco' do
      @login.com('', '123456')
      expect(@login.msg_user_error.text).to eql '* Matrícula ou e-mail é obrigatório'
    end

    it 'senha em branco' do
      @login.com('colaborador@imagine.com.br', '')
      expect(@login.msg_pass_error.text).to eql '* Senha é obrigatória'
    end

    it 'usuário e senha inválidos' do
      @login.com('colaborador@meneghetti.com.br', 'xpto2018')
      expect(@login.msg_login_error.text).to eql '* Login ou senha inválidos! Por favor, tente novamente!'
    end

    it 'usuario inválido' do
      @login.com('colaborador@meneghetti.com.br', '123456')
      expect(@login.msg_login_error.text).to eql '* Login ou senha inválidos! Por favor, tente novamente!'
    end

    it 'senha inválida' do
      @login.com('colaborador@imagine.com.br', 'xpto2018')
      expect(@login.msg_login_error.text).to eql '* Login ou senha inválidos! Por favor, tente novamente!'
    end
  end

  describe 'com sucesso', :logoff do
    it 'login válido' do
      @login.com('corporativo@imagine.com.br', '123456')
      expect(@feed.page_title.text).to eql 'Feed de ideias'
    end

    after(:each, :logoff) do
      @nav.logout
    end
  end
end
