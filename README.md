# RE Format Collection

This repository is filled with various notes on various different formats
that I've reversed overtime. A lot of these are provided in
[Rehex](https://github.com/solemnwarning/rehex)'s
[Binary Template](https://solemnwarning.net/rehex/manual/bt.html) format,
which is easily translatable into C/C++ and most other languages.

As noted in the [license](./LICENSE), I'm releasing all of this documentation
into the public domain. That said, a reference or callout wouldn't hurt! ❤️

Contributions are also welcome! Just keep in mind that the plan is to keep
*everything* here public domain.

----

### [Computer Artworks Ltd.](https://www.mobygames.com/company/computer-artworks-ltd)

Developed two games,
[Evolva](https://www.mobygames.com/game/windows/evolva)
and [The Thing](https://www.mobygames.com/game/thing).
Both games appear to be derived from the same in-house technology.

- [3DF](computer-artworks/3df.bt) (Bitmap font descriptor; *The Thing*)
- AN (Animation data; *The Thing*)
- [BIN](computer-artworks/bin.bt) (Entity data; *The Thing*)
- [BT](computer-artworks/bt.bt) (Strings; *The Thing*)
- ENT (Text-based entity descriptor format; *Evolva*)
- GEO (Collision mesh data; *The Thing*)
- FX (Text-based effect descriptor format; *The Thing*)
- LVL (INI level descriptor format; *Evolva*, *The Thing*)
- [MSH](computer-artworks/msh.bt) (Mesh data; *Evolva*, *The Thing*)
- PAK (ZIP package format; *The Thing*)
- SGH ('SceneGraph' data; *Evolva*, *The Thing*)

### [Triton](https://www.pouet.net/groups.php?which=161)

Demoscene group.
Essentially the predecessor to Starbreeze.
Responsible for the cancelled [Into the Shadows](https://www.pouet.net/prod.php?which=2588) game.

- [HDV](triton/hdv.bt) (Mesh data; *Into the Shadows*)
