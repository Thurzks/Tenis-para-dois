#region Movimentação
image_angle+= velocidade

x += movX * velocidade
y += movY * velocidade
velocidade+= 0.01
#endregion
#region Colisão
	//Colisão da tela
	if y <= 0 or y >= room_height{
	
		movY *= -1

	}
	
//Colisão com o player
colisaoHorizontalP1 = place_meeting(x - 10 , y, objplayer1)
colisaoHorizontalP2 = place_meeting(x + 10 , y, objplayer2)
colisaoVerticalCima = place_meeting(x, y - 10, objplayer1) or place_meeting(x, y - 10, objplayer2)
colisaoVerticalBaixo = place_meeting(x, y + 10, objplayer1) or place_meeting(x, y + 10, objplayer2)
if colisaoHorizontalP1{
	movX = 1
}

if colisaoHorizontalP2{
	movX = -1
}

if colisaoVerticalCima{
	movY = 1
}

if colisaoVerticalBaixo{
	movY = -1
}

#endregion
#region Pontos
if x <= 0{
	global.pontosP2++
	instance_destroy()
}

if x >= room_width{
	global.pontosP1++
	instance_destroy()
}


#endregion