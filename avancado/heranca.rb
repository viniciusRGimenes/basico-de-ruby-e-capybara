class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
            self.nome = nome
            self.marca = marca
            self.modelo = modelo

    end
    
    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end

    def buzinar
        puts 'AAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH'
    end
end

class Carro < Veiculo

    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

class Moto < Veiculo

    def pilotar
        puts "#{nome} iniciando o caminho"
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'M', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

uno = Carro.new('Uno', 'FIAT', 'Escada')
uno.ligar
uno.buzinar
uno.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar