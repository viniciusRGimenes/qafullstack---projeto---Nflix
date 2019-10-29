describe 'Alertas de Js', :alerts do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'

    end

    it 'alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end

end