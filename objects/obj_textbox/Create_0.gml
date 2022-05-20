/// @description Insert description here
// You can write your code in this editor

//textbox parametros
textbox_width =  895;
textbox_height = 275;
border = 15
line_sep = 60
line_width = textbox_width - border

txtb_spr = sp_dialogueBox;
txtb_img = 0;
txtb_img_spd = 6/60;

//text
page = 0;
text[0] = "Ola, este e um bom exemplo, um lugar legal para comecar, nao sei como vai ser";
text[1] = "SERA QUE TA TUDO FUNCIONANDO DIREITINHO??? HMMMM!!!"
text[2] = "Hehe."
text[3] = "Ola, este e um bom exemplo, um lugar legal para comecar, nao sei como vai ser LOOOOOOOOOOOOOOLOLOL OO OL OL O LL OLOASLDLSOA DLOSADLSA DOSADOASLD OSA DSALDO SL DOSALO DLSAOD LASD OSADLSA DAS DASLD OASLOD A L";
text_length[0] = string_length(text[0])
draw_char = 0
text_speed = 1

setup = false

page_number = 0
