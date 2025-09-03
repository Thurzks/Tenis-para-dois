#region Estratégia
	if objbola.y > y and y + velocidade < room_height{
		y+= velocidade
          
	}
	else if objbola.y < y and y - velocidade > 0{
		y -= velocidade
	
	}
#endregion
