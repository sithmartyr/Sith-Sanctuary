textures/cos1/cretetrimlight2
{
	qer_editorimage textures/cos1/cretetrimlight2.tga
	q3map_lightimage textures/cos1/cretelighttrim01.blend.tga
	surfaceparm nomarks
	q3map_lightsubdivide 32
	q3map_surfacelight 1000
	{
		map textures/cos1/cretetrimlight2.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/cos1/cretelighttrim01.blend.tga
		blendfunc add
	}
}

textures/costanza1/cretebase4_trim_glow
{
	qer_editorimage textures/costanza1/cretebase4_trim_glow.tga
	q3map_lightimage textures/costanza1/cretebase_trim_glow_BLEND.tga
	q3map_surfacelight 500
	{
		map textures/costanza1/cretebase4_trim_glow.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/costanza1/cretebase_trim_glow_BLEND.tga
		blendfunc add
		rgbGen wave sin 0 1 0 1 
	}
}
