// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// dentro desse script voce coloca o nome do npc que vai falar e o texto
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "npc 1":
			scr_text("Eu sou a npc 1, muito prazer")
			scr_text("sadadsdsd")
		break;
		
		case "npc 2":
			scr_text("Eu sou a npc 2, muito prazer")
			scr_text("fgfgfgfgf")
		break;
		
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
	}
}