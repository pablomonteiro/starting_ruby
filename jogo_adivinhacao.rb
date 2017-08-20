def boas_vindas 
	puts "Bem-Vindo ao Jogo de Adivinhação";
	puts "Qual seu nome?"
	nome = gets
	puts "Bem-Vindo #{nome} \n\n\n"
end

def retorna_nivel_dificuldade
	puts "Informe o nível de dificuldade entre 1 e 5, onde 1 - Fácil e 5 - Difícil"
	dificuldade = gets.to_i
end

def retorna_valor_maximo dificuldade

	case dificuldade
	when 1
		return maximo = 30
	when 2
		return maximo = 50
	when 3
		return maximo = 80
	when 4
		return maximo = 150
	else
		return maximo = 200
	end
end

def numero_secreto(maximo)
	sorteado = rand(maximo)
	puts "Escolheremos um número pra você entre 0 e #{maximo}"
	puts "Escolhido... Informe um número para tentar adivinhar!"
	sorteado
end

def pede_numero(tentativa, totalDeTentativa)
	puts "Tentativa #{tentativa} de #{totalDeTentativa}"
	chute = gets 
	puts "\n\n\n"
	puts "Você chutou o número #{chute}"
	chute.to_i
end

def verifica_se_acertou(chute, numero)
	acertou = chute.to_i == numero
	if acertou
		puts "Acertou!"
		return true
	end
	return false
end

def envia_mensagem_de_erro(chutes, chute, numero, maximo, minimo)
	puts "Errou!"
	puts "Seus chutes até agora foram: #{chutes}"
	maior = chute > numero
	if maior
		maximo = chute
		puts "O número é menor que #{maximo}"
	else
		minimo = chute
		puts "O número é maior que #{minimo}"
	end
	puts "Tente outra vez!"
	puts "O número deve está entre #{minimo} e #{maximo}"
	puts "\n\n\n"
	return minimo, maximo
end 

def mensagem_fim_de_jogo(numero)
	puts "Fim de jogo"
 	puts "O número escolhido foi #{numero}"
end

def calcular_perda_pontuacao(total_de_pontos, chute, numero, tentativa)
	valor_perda = (chute - numero) * tentativa
	total_de_pontos - valor_perda
end

def jogo
	boas_vindas
	dificuldade = retorna_nivel_dificuldade
	minimo = 0
	maximo = retorna_valor_maximo dificuldade
	numero = numero_secreto maximo
	totalTentativa = 5
	total_maximo_de_pontos = 1000
	pontuacao = total_maximo_de_pontos

	chutes = []

	for tentativa in 1..totalTentativa
		chute = pede_numero tentativa, totalTentativa
		chutes << chute
		if verifica_se_acertou chute, numero
			break
		else
			minimo, maximo = envia_mensagem_de_erro chutes, chute, numero, maximo, minimo
			pontuacao = calcular_perda_pontuacao pontuacao, chute, numero, tentativa
		end

	 end
	 puts "Você atingiu a pontuação de #{pontuacao} pontos num total de #{total_maximo_de_pontos}."
	mensagem_fim_de_jogo numero
end

def deseja_jogar_novamente
	puts "Deseja jogar novamente? (S/N)"
	resposta = gets.strip
	resposta.upcase == "S"
end

loop do
	jogo
	if !deseja_jogar_novamente
		break
	end
end
 