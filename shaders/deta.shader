textures/sky/ras
{
	qer_editorimage	textures/sky/ras.tga
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	skyParms	textures/sky/ras 512 -
}

textures/skies/tim_hell
{
	qer_editorimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun 1 .77 .77 80 315 70
	//q3map_sun .5 .37 .19 80 315 70

	//q3map_sun 1 .37 .19 85 30 70
	q3map_surfacelight 130
	skyparms - 384 -

	//cloudparms 512 full
	//lightning

	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/dark_sky
{
	qer_editorimage textures/skies/dark.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun 1 .77 .77 80 315 70
	//q3map_sun .5 .37 .19 80 315 70

	//q3map_sun 1 .37 .19 85 30 70
	q3map_surfacelight 130
	skyparms - 384 -

	//cloudparms 512 full
	//lightning

	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/dark_star.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/red_death
{
	qer_editorimage textures/skies/killsky_1.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun 1 .77 .77 80 315 70
	//q3map_sun .5 .37 .19 80 315 70

	//q3map_sun 1 .37 .19 85 30 70
	q3map_surfacelight 130
	skyparms - 384 -

	//cloudparms 512 full
	//lightning

	{
		map textures/skies/dark_red.tga
		//tcMod scroll 0.05 .1
		tcMod scroll 0.015 0.005
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/star_field.tga
		blendfunc GL_ONE GL_ONE
		//tcMod scroll 0.05 0.06
		tcMod scroll 0.005 0.008
		tcMod scale 4 3
	}
}

textures/skies/dromund
{
	qer_editorimage textures/skies/default.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun 1 .77 .77 80 315 70
	//q3map_sun .5 .37 .19 80 315 70

	//q3map_sun 1 .37 .19 85 30 70
	q3map_surfacelight 130
	skyparms - 384 -

	//cloudparms 512 full
	//lightning

	{
		map textures/skies/default.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/stars.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/demap/pulse
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/demap/pulse
        rgbGen lightingDiffuse
    }
    {
        map textures/demap/pulse_1
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map textures/demap/pulse_2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

textures/demap/mirrorfloor
{
	qer_editorimage	textures/demap/DE_Mirror
	surfaceparm	forcefield
	portal
	q3map_nolightmap
    {
        map textures/demap/de_mirror2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        depthWrite
    }
    {
        map textures/demap/mirfloor
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
    {
        map textures/demap/mirfloor_env
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.200000 0.200000 0.200000 )
        tcGen environment
    }
}

textures/demap/lavahell
{
	q3map_lightimage	textures/taspir/lava00
	qer_editorimage	textures/taspir/lava00
	q3map_surfacelight	1200
	q3map_lightsubdivide	512
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	lava
	surfaceparm	trans
	q3map_nolightmap
	q3map_onlyvertexlighting
	q3map_novertexshadows
	cull	disable
    {
        map textures/demap/lavahell2
        rgbGen wave sin 1.2 0.4 0 0.3
        tcMod scroll 0.04 0.04
    }
}

textures/demap/lavatex1
{
	qer_editorimage	textures/demap/lavatex1
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	lava
	q3map_nolightmap
	q3map_onlyvertexlighting
	q3map_novertexshadows
    {
        map textures/demap/lavatex1
        rgbGen wave sin 0.8 0.1 0 0.3
        alphaGen const 0
        tcMod scroll 0 -0.25
    }
    {
        map textures/demap/lavatex2
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 0.05 0.05
        tcMod turb 1 0.3 1 0.1
    }
}

models/map_objects/demap/pulse
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/demap/pulse
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/demap/pulse_1
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map models/map_objects/demap/pulse_2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

textures/demap/shinyfloor
{
	qer_editorimage	textures/demap/DE_Mirror4
	surfaceparm	forcefield
	portal
	//q3map_nolightmap
    {
        map textures/demap/base
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
    {
        map textures/demap/DE_Mirror3
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        depthWrite
    }
    {
        map textures/demap/DE_Mirror4
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.200000 0.200000 0.200000 )
        tcGen environment
    }
}

textures/demap/szico_ice
{
       Cull none
       qer_editorimage textures/demap/szico_ice.tga
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	surfaceparm	slick
	q3map_material	Ice
	q3map_nolightmap
 
     {
         map textures/demap/szico_ice.tga
         blendFunc blend
         alphaFunc GT0
         depthWrite
         rgbGen identity
     }
     {	
	map textures/demap/szico_waterenv
	tcGen environment
	blendFunc GL_DST_COLOR GL_ZERO
     }
}

models/map_objects/demap/apoc_statue/statue
{   
 
        {
                map models/map_objects/demap/apoc_statue/reflect.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map models/map_objects/demap/apoc_statue/statue.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	} 
        {
		map $lightmap
                blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

models/map_objects/demap/apoc_statue/statue_silv
{   
 
        {
                map models/map_objects/demap/apoc_statue/reflect_silv.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map models/map_objects/demap/apoc_statue/statue_silv.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	} 
        {
		map $lightmap
                blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/skies/blacksky
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	//skyparms env/q3sky_red1 - -
	//skyparms env/kmnight - -
	//skyparms env/black - -
	q3map_surfacelight 25
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 32	90 90
	{
		map	gfx/colors/black.tga
	}
}

textures/camera/camera
{
	qer_editorimage textures/camera/camera
	surfaceparm playerclip
	surfaceparm nolightmap
	portal
	{
		map textures/camera/camera
 		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
		alphaGen portal 2048
    }
}

models/map_objects/demap/shield_sm
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/demap/shield_sm
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/demap/shield_smglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0 2
    }
}

models/map_objects/demap/myred2
{
	qer_editorimage	models/map_objects/demap/myred2
	nopicmip
	nomipmaps
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/demap/myred2
        blendFunc GL_ONE GL_ZERO
        glow
    }
    {
        map models/map_objects/demap/myred2_glow
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave square 0.5 1 0 1
    }
}