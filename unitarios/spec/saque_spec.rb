class ContaCorrente
attr_accessor :saldo, :mensagem

    def initialize(saldo)
    self.saldo = saldo
    end

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente'
        else
            self.saldo -= valor
        end
    end

end

describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
  
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'Quando o saldo é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente'
            end

            it 'meu saldo permanece com zeros' do
                expect(@conta.saldo).to eql 0.00
                puts @conta.saldo
            end
        end

        context 'Quando o saldo é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente'
            end

            it 'meu saldo permanece com zeros' do
                expect(@conta.saldo).to eql 0.00
                puts @conta.saldo
            end

    end

end