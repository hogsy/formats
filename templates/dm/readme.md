# Discreet Monsters (Attaction)

## Monster Engine

### Fun Facts

Seems entirely written in C++.

Modular design; systems are implemented through "SCO" modules that expose functionality to the scripting system.

Rendering is abstracted per `RenderEngine2.dll`; only ships with DirectX 7 support, but historically also supported OpenGL and older versions of DirectX.

Was originally intended to be used for an adventure game, similar to Myst or some point and click adventure games (but with combat).
Ended up getting snipped down into a first-person platformer due to financial issues.
SCOs for items imply much of the original adventure mechanics are still implemented, but unused.

Seems that `AurynQuest.exe` just operates as a launcher? `game.dll` is where the real magic happens.

Some additional launch arguments are available...
- `allowlocalfiles`
- `testmode`

### Formats

| Format         | Description                | Percent |
|----------------|----------------------------|---------|
| [df](dm_df.bt) | Directory file?            | ...     |
| cf             | Content file?              | ...     |
| igp            | Indoor level               | ...     |
| ics            | Indoor collision           | ...     |
| ogp            | Outdoor level (unused)     | ...     |
| ocs            | Outdoor collision (unused) | ...     |
| dlg            | Dialog                     | ...     |
| pcs            | Pre-compiled script        | ...     |
| mtx            | Matrix                     | ...     |
| grd            | Waypoint graph             | ...     |
