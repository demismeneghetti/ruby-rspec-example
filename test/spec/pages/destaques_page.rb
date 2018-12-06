module Destaques
  class Page < SitePrism::Page
    element :page_title, 'body > app-root > div > div.main-panel > app-navbar > nav > div.row.d-flex.align-items-center.first-elements > div.col-6.col-md-6.col-lg-6.d-flex.align-items-center.no-padding-left'
    element :filter_period, '.fa-calendar'
    element :filter_period_30days, 'body > app-root > div > div.main-panel > div > app-ranking-list > div > div > div.row.table-header > div.col-3.col-md-3.d-flex.align-items-center.justify-content-end.mobile-margin-top > div > ul > li:nth-child(1)'
    element :filter_period_60days, 'body > app-root > div > div.main-panel > div > app-ranking-list > div > div > div.row.table-header > div.col-3.col-md-3.d-flex.align-items-center.justify-content-end.mobile-margin-top > div > ul > li:nth-child(2)'
    element :filter_period_90days, 'body > app-root > div > div.main-panel > div > app-ranking-list > div > div > div.row.table-header > div.col-3.col-md-3.d-flex.align-items-center.justify-content-end.mobile-margin-top > div > ul > li:nth-child(3)'
    element :filter_unit_local, '.fa-filter'
    element :filter_unit_local_unit_cb, '#buSelect'
    element :filter_unit_local_local_cb, '#localSelect'
    element :filter_unit_local_clear_btn, '.btn-cancel'
    element :filter_unit_local_done_btn, '.btn-imagine'

    def filter_period_30_days
      filter_period.click
      filter_period_30days.click
    end

    def filter_period_60_days
      filter_period.click
      filter_period_60days.click
    end

    def filter_period_90_days
      filter_period.click
      filter_period_90days.click
    end

    def popup_filter_unit_local_done(unit, local)
      filter_unit_local.click
      filter_unit_local_unit_cb.select unit
      sleep 1
      filter_unit_local_local_cb.select local
      filter_unit_local_done_btn.click
    end

    def popup_filter_unit_local_clear(unit, local)
      filter_unit_local.click
      filter_unit_local_unit_cb.select unit
      sleep 1
      filter_unit_local_local_cb.select local
      filter_unit_local_clear_btn.click
    end
  end
end