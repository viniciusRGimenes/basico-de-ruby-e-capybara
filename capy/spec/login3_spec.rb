describe 'Login 3', :login3 do

    before(:each) do
        visit 'access'

    end
    

    it 'login com sucesso' do

        within('#login') do
            find('input[name=password]').set 'jarvis!'
            find('input[name=username]').set 'stark'
            click_button 'Entrar'

        end

        
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Cadastro com sucesso' do

        within('#signup') do
            find('input[name=password]').set '123456'
            find('input[name=username]').set 'bini'
            click_link 'Criar Conta'

        end

        
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end