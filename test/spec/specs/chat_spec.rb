require 'spec_helper'

describe 'Chat', :chat do
  before do
    @login = Login::Page.new
    @nav = Nav::Page.new
    @chat = Chat::Page.new
    @nova_ideia = NovaIdeia::Page.new

    @login.load
  end

  describe 'Cadastrar nova idéias:' do
    before do
      @login.com('colaborador-teste@imagine.com.br', '123456')
    end

    it 'Cadastro de Nova Ideia Disruptiva' do
      @nav.nova_ideia_btn.click
      @chat.cadastrar_ideia_disruptiva('Processos manuais', 'Automação dos processos', 'Velocidade de execução', 'Automação 4.0', 'CTN-01 - DIR TI E NEGOCIOS DIGITAIS - EC')
      @nova_ideia.enviar_ideia_btn.click
      sleep 10
    end

    # it 'Cadastro de Nova Ideia Radical' do
    #   @nav.nova_ideia_btn.click
    #   @chat.cadastrar_ideia_radical
    # end

    # it 'Cadastro de Nova Ideia Contínua' do
    #   @nav.nova_ideia_btn.click
    #   @chat.cadastrar_ideia_continua
    # end

  end
end
