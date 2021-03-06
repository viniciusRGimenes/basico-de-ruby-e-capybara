describe 'Tabelas', :tabs do

    before(:each) do
        visit 'tables'

    end

    it 'Deve exibir o salário do Robert Downey Jr' do
        atores = all('table tbody tr')

        
        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}
        puts stark.text


        expect(stark.text).to include '10.000.000'

    end

    it "deve exibir o salário do Vin Diesel" do

        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'

    end

    it 'deve exibir o filme velozes' do

        diesel = find('table tbody tr', text: '@vindiesel')

        movie = diesel.all('td')[2].text

        expect(movie).to eql 'Velozes e'

    end

    it 'deve exebir o instagram do chris evans' do

        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta).to eql '@teamcevans'

    end

    it 'deve selecionar chris prat para remoção' do

       prat = find('table tbody tr', text: 'Chris Prat')
       prat.find('a', text: 'delete').click

       msg = page.driver.browser.switch_to.alert.text
       expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'

    end

    it 'deve selecionar chris prat para edição' do

        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click
 
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
 
     end


end