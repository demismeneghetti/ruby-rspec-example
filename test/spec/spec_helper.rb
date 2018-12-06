require 'selenium-webdriver'
require 'capybara'
require 'capybara/rspec'
require 'site_prism'

require_relative 'pages/chat_page'
require_relative 'pages/desafios_page'
require_relative 'pages/destaques_page'
require_relative 'pages/feed_page'
require_relative 'pages/ideias_execucao_page'
require_relative 'pages/login_page'
require_relative 'pages/meu_arquivo_page'
require_relative 'pages/meus_pontos_page'
require_relative 'pages/minhas_ideias_page'
require_relative 'pages/nav_page'
require_relative 'pages/nova_ideia_page'
require_relative 'pages/perg_resp_page'
require_relative 'pages/sidebar_page'
require_relative 'pages/usuario_page'

# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :firefox)
# #     args = %w[windows-size=1440,990 headless disable-gpu]
# #     Capybara::Selenium::Driver.new(app,
# #     :browser => :chrome,
# #     :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
# #       'chromeOptions' => {
# #         'args' => args
# #       }
# #     )
# #   )
# end

Capybara.configure do |c|
  c.default_driver = :selenium_chrome
  c.app_host = "https://www.url.com.br"
end

# AllureRSpec.configure do |c|
#   c.output_dir = 'log/reports'
#   c.clean_dir = true
#   c.logging_level = Logger::WARN
# end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Login
  config.include Feed
  config.include Nav
  config.include Chat
  config.include NovaIdeia
  config.include PerguntasRespostas
  config.include Sidebar
  config.include IdeiasEmExecucao
  config.include MeuArquivo
  config.include MinhasIdeias
  config.include Desafios
end