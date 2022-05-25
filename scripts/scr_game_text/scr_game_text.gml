// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// dentro desse script voce coloca o nome do npc que vai falar e o texto
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "npc 1":
			scr_text("Eu sou a npc 1, muito prazer")
			
		break;
		
		case "npc 2":
			scr_text("caminhe ate os pontos verdes para sair daqui")
			scr_text("ou nao, faca o que quiser eu nao me importo")
			scr_text("sou apenas um pontinho azul")
				scr_option("claro", "npc 2 - sim");
				scr_option("nem", "npc 2 - nao");
				scr_option("o que e voce?", "npc 2 - quem");
		break;
				case "npc 2 - sim":
				scr_text("entao voce escolheu a morte?")
				break;
				
				case "npc 2 - nao":
				scr_text("passar bem")
				break;
				
				case "npc 2 - quem":
				scr_text(". . .");
				break
				
		
		case "npc 3":
			scr_text("Eu sou a npc 3, muito prazer")
			scr_text("bnnbnnbn")
		break;
		
		case "blocked entrance":
			scr_text("Voce nao pode passar por aqui...")
			scr_text("...quem sabe mais tarde?")
		break;
		
		case "vovo":
			scr_text("Oh, ai esta voce")
			scr_text("andei lhe procurando")
			scr_text("eu sei que almeja em se tornar um heroi, e nao vou tentar te impedir ")
			scr_text("so quero que saiba que...")
			scr_text("se sentir que chegou ao seu limite, lembre-se do motivo pelo qual voce luta")
			scr_text("lembre-se por que resolveu trilhar este caminho")
			scr_text("e permita que esta memoria o carregue alem de seus limites.")
		break;
		
		case "lose":
			scr_text("Nada e facil")
			scr_text("Mas com forca e determinacao tudo se realiza")
			scr_text("Nao desista!")
				scr_option("Ah eu desisto", "lose - sim");
				scr_option("Voce tem razao voz misteriosa!", "lose - nao");
		break;
				case "lose - sim":
					global.lose = true
					scr_text("Bom...")
					scr_text("Eu esperava mais de voce...")
					scr_text("Mas voce sempre vai poder tentar novamente!")
				break;
				
				case "lose - nao":
					global.lose = false
					scr_text("É disso que eu to falando!!")
				break;
					
		
		
		
		
		
		
		
		
		
		case "bolso":
			scr_text("Como eu faco pra conectar o meu plug anal bluetooth com o twitter do Bolsonaro?")
			scr_text("Basicamente, eu quero configurar o meu plug anal pra vibrar toda vez que o Bolsonaro twittar alguma coisa.")
			scr_text("So o pensamento dele comendo o meu cuzinho ja me da uma erecao enorme, entao eu quero sentir ele dentro de mim sempre que ele twittar algo.")
			scr_text("Eu estou trabalhando remotamente por causa do coronga, entao eu posso ficar o dia inteiro com ele enfiado la. Se alguem souber como configurar, por favor me diga!")
		break;
	}
}