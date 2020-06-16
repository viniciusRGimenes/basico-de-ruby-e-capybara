describe 'IDs Dinamicos', :identific do

    before(:each) do
        visit 'access'

    end

    it 'cadastro' do
        # $ = Termina com
        find('input[id$=UsernameInput]').set 'Vinicius'
        # ^ = Começa com
        find('input[id^=PasswordInput]').set '123456'
        # * = Contem
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end

end

