require 'spec_helper'

describe 'Sidebar:', :sidebar do
  before do
    @desafios = Desafios::Page.new
    @destaques = Destaques::Page.new
    @feed = Feed::Page.new
    @ideias_execucao = IdeiasEmExecucao::Page.new
    @login = Login::Page.new
    @meu_arquivo = MeuArquivo::Page.new
    @minhas_ideias = MinhasIdeias::Page.new
    @nav = Nav::Page.new
    @sidebar = Sidebar::Page.new
  end

  describe 'Menu > Feed de Ideias:', :feed_de_ideias do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @sidebar.feed_ideias_options.click
    end

    it 'Mais recentes' do
      @sidebar.feed_ideias_options_mais_recentes.click
    end

    it 'Mais relevantes' do
      @sidebar.feed_ideias_options_mais_relevantes.click
    end

    it 'Favoritos' do
      @sidebar.feed_ideias_options_favoritos.click
    end
  end

  describe 'Menu > Suas idéias:', :suas_ideias do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
    end

    it 'Lista ideias' do
      @sidebar.suas_ideias.click
      sleep 3
      expect(@minhas_ideias.page_title.text).to eql 'Minhas ideias'
    end
  end

  describe 'Menu > Ideias em execução:', :ideias_execucao do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @sidebar.ideias_em_execucao.click
      @ideias_execucao.unselect_filters
    end

    it 'Filtros > Fila de Execução' do
      @ideias_execucao.filtro_fila_execucao.click
    end

    it 'Filtros > Execução' do
      @ideias_execucao.filtro_execucao.click
    end

    it 'Filtros > Cancelado' do
      @ideias_execucao.filtro_cancelado.click
    end

    it 'Filtros > Concluído' do
      @ideias_execucao.filtro_concluido.click
    end
  end

  describe 'Menu > Desafios:', :desafios do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
    end

    it 'Lista de desafios' do
      @sidebar.desafios.click
      sleep 2
      expect(@desafios.page_title.text).to eql 'Desafios'
    end
  end

  # describe 'Menu > Trocar pontos:', :trocar_pontos do
  #   before do
  #     @login.load
  #     @login.com('colaborador-teste@imagine.com.br', '123456')
  #   end

  #   it 'Lista de pontos' do
  #     @sidebar.trocar_pontos.click
  #     expect(@minhas_ideias.page_title.text).to eql 'Minhas Ideias'
  #   end
  # end

  describe 'Menu > Destaques:', :destaques do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
      @sidebar.destaques.click
    end

    it 'Lista de destaques' do
      sleep 3
      expect(@minhas_ideias.page_title.text).to eql 'Destaques'
    end

    it 'Filtro por período > 90 dias' do
      @destaques.filter_period_30_days
    end

    it 'Filtro por período > 60 dias' do
      @destaques.filter_period_60_days
    end

    it 'Filtro por período > 30 dias' do
      @destaques.filter_period_90_days
    end

    it 'Filtro por negócio/local > Corporativo/ADM CENTRAL' do
      @destaques.popup_filter_unit_local_done('Corporativo', 'ADM CENTRAL')
    end

    it 'Filtro por negócio/local > Corporativo/FÁB TAQUARI' do
      @destaques.popup_filter_unit_local_done('Corporativo', 'FÁB TAQUARI')
    end

    it 'Filtro por negócio/local > Corporativo/FÁB METAIS SP' do
      @destaques.popup_filter_unit_local_done('Corporativo', 'FÁB METAIS SP')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL ESTRELA DO SUL' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL ESTRELA DO SUL')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL AGUDOS' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL AGUDOS')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL UBERABA' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL UBERABA')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL BOTUCATU' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL BOTUCATU')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL ITAPETININGA' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL ITAPETININGA')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL LENÇÓIS PAULISTA' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL LENCÓIS PAULISTA')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FL PIRATININGA' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FL PIRATININGA')
    end

    it 'Filtro por negócio/local > Madeira Florestal/FÁB AGUDOS' do
      @destaques.popup_filter_unit_local_done('Madeira Florestal', 'FÁB AGUDOS')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/ADM CENTRAL' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'ADM CENTRAL')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/FÁB BOTUCATU' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'FÁB BOTUCATU')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/FÁB AGUDOS' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'FÁB AGUDOS')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/FÁB TAQUARI' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'FÁB TAQUARI')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/FÁB ITAPETININGA' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'FÁB ITAPETININGA')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/FÁB UBERABA' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'FÁB UBERABA')
    end

    it 'Filtro por negócio/local > Madeira Painéis e Pisos/CD RECIFE' do
      @destaques.popup_filter_unit_local_done('Madeira Painéis e Pisos', 'CD RECIFE')
    end

    it 'Filtro por negócio/local > Deca Metais/FÁB METAIS SP' do
      @destaques.popup_filter_unit_local_done('Deca Metais', 'FÁB METAIS SP')
    end

    it 'Filtro por negócio/local > Deca Metais/FÁB METAIS JUNDIAÍ' do
      @destaques.popup_filter_unit_local_done('Deca Metais', 'FÁB METAIS JUNDIAÍ')
    end

    it 'Filtro por negócio/local > Deca Metais/ADM CENTRAL' do
      @destaques.popup_filter_unit_local_done('Deca Metais', 'ADM CENTRAL')
    end

    it 'Filtro por negócio/local > Deca Metais/FÁB METAIS JACAREÍ' do
      @destaques.popup_filter_unit_local_done('Deca Metais', 'FÁB METAIS JACAREÍ')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS JUNDIAÍ I' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS JUNDIAÍ I  ')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS SUL' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS SUL')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS RECIFE' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS RECIFE')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS QUEIMADOS' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS QUEIMADOS')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS PARAÍBA' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS PARAÍBA')
    end

    it 'Filtro por negócio/local > Deca Louças/ADM CENTRAL' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'ADM CENTRAL')
    end

    it 'Filtro por negócio/local > Deca Louças/FÁB LOUÇAS JUNDIAÍ II' do
      @destaques.popup_filter_unit_local_done('Deca Louças', 'FÁB LOUÇAS JUNDIAÍ II')
    end

    it 'Filtro por negócio/local > Hydra Chuveiros e Torneiras Elétricas/HYDRA ARACAJÚ' do
      @destaques.popup_filter_unit_local_done('Hydra Chuveiros e Torneiras Elétricas', 'HYDRA ARACAJU')
    end

    it 'Filtro por negócio/local > Hydra Chuveiros e Torneiras Elétricas/HYDRA TUBARÃO' do
      @destaques.popup_filter_unit_local_done('Hydra Chuveiros e Torneiras Elétricas', 'HYDRA TUBARAO')
    end

    it 'Filtro por negócio/local > Hydra Chuveiros e Torneiras Elétricas/HYDRA SÃO PAULO' do
      @destaques.popup_filter_unit_local_done('Hydra Chuveiros e Torneiras Elétricas', 'HYDRA SAO PAULO')
    end
  end

  describe 'Menu > Meu Arquivo:', :meu_arquivo do
    before do
      @login.load
      @login.com('colaborador-teste@imagine.com.br', '123456')
    end

    it 'Lista de arquivos' do
      @sidebar.meu_arquivo.click
      sleep 3
      expect(@meu_arquivo.page_title.text).to eql 'Arquivo de ideias'
    end
  end

  after(:each) do
    @nav.logout
  end
end
