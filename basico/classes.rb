# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no ruby, tudo são objetos

# Uma classe é uma forma de organizar ações de um objeto no mundo real
# uma classe possui atributos e métodos
# Caracteristicas e ações

# EX: Carro (Nome, Modelo, Cor, Quantidade de portas, etc...)
# Ligar, Buzinar, Parar, etc...

class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto!'
    end
end

civic = Carro.new
civic.nome = 'Civic'
puts civic.nome
civic.ligar