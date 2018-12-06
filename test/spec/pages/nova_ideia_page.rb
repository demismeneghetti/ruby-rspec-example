module NovaIdeia
  class Page < SitePrism::Page
    element :titulo_ideia, '#nameIdea'
    element :detalhe_ideia, '#txtSpeech'
    element :unidade_negocio, '#buSelect'
    element :local, '#localSelect'
    element :area_atuacao, '.btn-default'
    element :a_a_comercial, '#occupationAreaSelect > div > ul > li:nth-child(3) > a > span'
    element :a_a_marketing, '#occupationAreaSelect > div > ul > li:nth-child(4) > a > span'
    element :a_a_pesquisa_desenvolvimento_de_produtos, '#occupationAreaSelect > div > ul > li:nth-child(5) > a > span'
    element :a_a_producao, '#occupationAreaSelect > div > ul > li:nth-child(6) > a > span'
    element :a_a_qualidade, '#occupationAreaSelect > div > ul > li:nth-child(7) > a > span'
    element :adicionar_ideia, '#addBuButton'
    element :participantes, 'input[placeholder="Digite o nome ou matrícula do colaborador..."]'
    element :anexar_apresentacao_btn, '#uploadFile'
    element :anexar_video_btn, '#uploadVideo'
    element :anexar_imagem_btn, '#uploadImage'
    element :cancelar_ideia_btn, '#cancelIdea'
    element :salvar_rascunho_ideia_btn, '#sendDraft'
    element :enviar_ideia_btn, '#sendIdea'

    def cadastro(titulo, detalhe, unidade, local)
      self.titulo_ideia.set titulo
      self.detalhe_ideia.set detalhe
      self.unidade_negocio.select unidade
      self.local.select local
      self.area_atuacao.click
      self.a_a_comercial.click
      self.adicionar_ideia.click
      self.enviar_ideia.click
      sleep 2
    end
  end
end
