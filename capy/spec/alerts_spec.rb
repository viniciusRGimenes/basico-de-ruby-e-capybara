describe 'Alertas de Js', :alerts do

    before(:each) do
        visit 'javascript_alerts'

    end

    it 'alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end

    it 'sim confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 3
    end


    it 'não confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3
    end

    it 'aceitar prompt', :prompt do

        accept_prompt(with: 'Vinicius') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, Vinicius'
        sleep 3

    end

    it 'cancelar prompt', :desafio do
        #Quando eu não aceito este prompt
        #Então a mensagem deve ser olá, nuLL
        
        dismiss_prompt(with: '') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, null'
        sleep 3
    end
end