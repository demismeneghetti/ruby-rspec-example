require 'spec_helper'

describe 'Novas ideias', :create_ideas do
  before do
    @login = Login::Page.new
    @feed = Feed::Page.new
    @nav = Nav::Page.new
    @chat = Chat::Page.new
    @nova_ideia = NovaIdeia::Page.new

    @login.load
  end

  # def login(user, pass)
  #   @login.com(user, pass)
  # end

  describe 'Inclusão de novas ideias: ' do
    it 'Nova inclusão de inovação disruptiva', :i_disruptiva do
      @login.com('colaborador@imagine.com.br', '123456')
      @nav.nova_ideia
      @nova_ideia.cadastro('Nova ideia automatizada', 'Detalhando a nova ideia automatizada', 'Deca Louças', 'Jundiaí')
      expect(@feed.toastr_mensagem.text).to eql 'Ideia criada com sucesso'
      @nav.logout
    end

    it 'Nova inclusão de inovação radical', :i_radical do
    end

    it 'Nova inclusão de inovação contínua', :i_continua do
    end

    after(:each) do
      @nav.logout
    end
  end
end
