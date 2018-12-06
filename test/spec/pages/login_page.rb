module Login
  class Page < SitePrism::Page
    set_url '/login'

    element :email_txt, '#login'
    element :pass_txt, '#password'
    element :entrar_btn, '#submitButton'
    element :esqueceu_lnk, '.link-login'

    element :msg_user_error, 'body > app-root > div > div > div > app-login > div > div > div > div.col-12.col-md-6.card > form > div:nth-child(3) > p'
    element :msg_pass_error, 'body > app-root > div > div > div > app-login > div > div > div > div.col-12.col-md-6.card > form > div:nth-child(5) > p'
    element :msg_login_error, 'body > app-root > div > div > div > app-login > div > div > div > div.col-12.col-md-6.card > form > div.d-flex.align-center > p'

    def com(user, password)
      email_txt.set user
      pass_txt.set password
      entrar_btn.click
      sleep 3
    end
  end
end
