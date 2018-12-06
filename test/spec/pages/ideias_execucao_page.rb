module IdeiasEmExecucao
  class Page < SitePrism::Page
    element :filtro_fila_execucao, '.btn-status.pause-status'
    element :filtro_execucao, '.btn-status.execution-status'
    element :filtro_cancelado, '.btn-status.canceled-status'
    element :filtro_concluido, '.btn-status.completed-status'

    def unselect_filters
      filtro_fila_execucao.click
      filtro_execucao.click
      filtro_cancelado.click
      filtro_concluido.click
    end
  end
end
