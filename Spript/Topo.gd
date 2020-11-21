extends Panel

export var numeroFase = 1
export(Color, RGB) var cor

func _ready():
	#Mudar cor do Painel
	var new_style = StyleBoxFlat.new();
	new_style.set_bg_color(cor);
	new_style.set_corner_radius_individual(0,0,50,50);
	new_style.shadow_color = cor
	new_style.shadow_offset = Vector2( 1, 1 )
	new_style.shadow_size = 5
	var panel = get_node("Panel");
	
	#Mudar cor dos botões
	var style_botoes = StyleBoxFlat.new();
	style_botoes.set_bg_color(cor)
	style_botoes.set_corner_radius_all(40)
	
	if  !is_in_group("TelaNivel"):
		$Panel/nivel.text = str(numeroFase)
		panel.set('custom_styles/panel', new_style);
		$Configuracao.set('custom_styles/normal', style_botoes);
		$Configuracao.set('custom_styles/hover', style_botoes);
		$Configuracao.set('custom_styles/pressed', style_botoes);
		$Configuracao.set('custom_styles/focus', StyleBoxEmpty.new());
		
		$voltar.set('custom_styles/normal', style_botoes);
		$voltar.set('custom_styles/hover', style_botoes);
		$voltar.set('custom_styles/pressed', style_botoes);
		$voltar.set('custom_styles/focus', StyleBoxEmpty.new());
	pass

func _on_voltar_pressed():
	get_tree().paused = false
	if  is_in_group("TelaNivel"):
		get_tree().change_scene("res://Scenes/Main.tscn")
	else: 
		get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Configuracao_pressed():
	get_tree().paused = true
	$PopupConfiguracao.show()
