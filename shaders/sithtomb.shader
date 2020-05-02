//textures/sithtomb/blackmarble
//{
//q3map_nolightmap
//{
//map textures/sithtomb/blackmarble
//blendFunc GL_ONE GL_ZERO
//rgbGen lightingDiffuse
//}
//{
//map textures/sithtomb/skyenv4
//blendFunc GL_SRC_ALPHA GL_ONE
//detail
//alphaGen lightingSpecular
//}
//{
//map textures/sithtomb/glossyenv
//blendFunc GL_DST_COLOR GL_SRC_COLOR
//detail
//tcGen environment
//}
//}

textures/sithtomb/skyenv4
{
q3map_nolightmap
{
map textures/sithtomb/skyenv4
blendFunc GL_ONE GL_ZERO
rgbGen lightingDiffuse
}
{
map textures/sithtomb/skyenv4
blendFunc GL_SRC_ALPHA GL_ONE
detail
alphaGen lightingSpecular
}
{
map textures/sithtomb/skyenvgloss
blendFunc GL_DST_COLOR GL_SRC_COLOR
detail
tcGen environment
}
}

textures/sithtomb/skyenvred
{
q3map_nolightmap
{
map textures/sithtomb/skyenvred
blendFunc GL_ONE GL_ZERO
rgbGen lightingDiffuse
}
{
map textures/sithtomb/skyenvred
blendFunc GL_SRC_ALPHA GL_ONE
detail
alphaGen lightingSpecular
}
{
map textures/sithtomb/skyenvred
blendFunc GL_DST_COLOR GL_SRC_COLOR
detail
tcGen environment
}
}

textures/sithtomb/glassdarkred
{
	qer_editorimage   textures/sithtomb/glassdarkred
	q3map_surfacelight 7500
	q3map_backSplash 0.5 8
	q3map_nolightmap
	q3map_lightRGB 1 0 0
    q3map_tesssize   48
    qer_trans   0.5
    surfaceparm nonopaque
    surfaceparm forcefield
    surfaceparm trans
	q3map_material   Glass
	{
        map textures/sithtomb/glassdarkred
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
	{
        map textures/sithtomb/glassdarkred
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
	{
        map textures/sithtomb/glassmediumred
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/sithtomb/water
{
	qer_editorimage	textures/sithtomb/water
	sort banner
	qer_trans	0.8
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
	tessSize	128
	deformvertexes normal 0.1 1.85
	deformvertexes wave 128 sin 0 1 0.3 2
    {
        map textures/sithtomb/water
	blendFunc GL_ONE GL_SRC_ALPHA
	rgbGen const ( 0.4 0.4 0.4 )
        alphaFunc GE128
	alphaGen const 1.0
	tcmod scroll 0 -0.25
    }
    {
	map textures/sithtomb/envmap
	tcGen environment
	rgbGen const ( 0.4 0.3 0.3 )
	blendFunc GL_ONE GL_ONE
    }
    {
	map textures/sithtomb/envmap
	tcGen environment
	blendFunc GL_DST_COLOR GL_ZERO
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/sithtomb/nodraw_water
{
	qer_editorimage textures/system/nodraw
	qer_trans	0.5
	surfaceparm	nomarks
	surfaceparm	nodraw
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
	q3map_nolightmap
}
