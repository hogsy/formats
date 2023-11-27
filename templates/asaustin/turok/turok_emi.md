# EMITDEF File Format

## Sample

```
*EMITDEF = 
{
	0,
	"CIRCLE"
	"FALSE"
	"FALSE"
	0.01,
	0.0,
	0.0,
	"FALSE"
	1.0, 0.0, 0.0, 0.0,
	0.0,
	"FALSE"
	1.0, 1.0, 1.0,
	0.0, 0.0, 0.0,
	0.0, 0.0, 0.0,
	0.0,
	1.0,
	"TRUE"
	"testing\test\tested"
	0.0,
	0.0,
	0,
	0,
	"TRUE"
}
```

Format takes 32 arguments. I'm not 100% on any of these.

```
	0,                      = Max particles (*int, must be greater than 0*)
	"CIRCLE"                = Shape name (*string*)
	"FALSE"                 = Shape align
	"FALSE"                 = Random spread
	0.01,                   = Time delay
	0.0,                    = First time delay
	0.0,                    = Random time delay
	"FALSE"                 = Random time each
	1.0, 0.0, 0.0, 0.0,     = Shape size
	0.0,                    = Random angle
	"FALSE"                 = Use emit offset 
	1.0, 1.0, 1.0,          = Offset scale
	0.0, 0.0, 0.0,          = Offset rotate
	0.0, 0.0, 0.0,          = Offset translate
	0.0,                    = Chance change to particle
	1.0,                    = Chance emit particle
	"TRUE"                  = Effect name is particle
	"testing\test\tested"   = Effect name
	0.0,                    = ...
	0.0,                    = ...
	0,                      = ...
	0,                      = ...
	"TRUE"                  = ...
```

## Shapes

It appears the following shapes are available.

- POINT
- RECT_EDGE
- TRI_EDGE
- TRI_CENTER
- CIRCLE
- SPHERE
- SPHERE_EDGE
- BOX_EDGE
- CYLINDER
- CYLINDER_EDGE
- CONE_EDGE
- CONIC
- CONIC_EDGE
- ENAGON
- ENAGON_EDGE
- PYRAMID
- PYRAMID_EDGE
