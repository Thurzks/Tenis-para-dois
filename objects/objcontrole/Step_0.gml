#region Diminuir a tela
// Botão para diminuir
botaoEsq = keyboard_check(vk_escape)

if botaoEsq{
	window_set_fullscreen(false)

}


// Botão para alterar o tamanho 
botaotamanho = keyboard_check_pressed(ord("F"))

if botaotamanho{

 if window_get_fullscreen(){
	window_set_fullscreen(false)
 }
 else{
	window_set_fullscreen(true)
 }
}
#endregion