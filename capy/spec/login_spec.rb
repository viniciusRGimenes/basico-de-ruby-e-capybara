describe 'Forms' do

    it 'login com sucesso' do

        visit 'login'

        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'

        click_button 'Login'
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Senha incorreta' do
        visit 'login'

        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis'

        click_button 'Login'
        expect(find('#flash').text).to include 'Senha é invalida!'

    end

    it 'Usuario não cadastrado' do
        visit 'login'

        fill_in 'userId', with: 'Stark'
        fill_in 'passId', with: 'jarvis!'

        click_button 'Login'
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'

    end
end