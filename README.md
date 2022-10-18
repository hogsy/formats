# Reversed Format Collection

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

## [Appeal S.A.](https://www.mobygames.com/company/appeal-studios-sa)

Developers behind [Outcast](https://www.mobygames.com/game/windows/outcast).

| Name | Description | Status  | Games   | URL                          |
|------|-------------|---------|---------|------------------------------|
| MSH  | Mesh format | Partial | Outcast | [Link](appeal/appeal_msh.bt) |

## [Blitz Games Ltd](https://www.mobygames.com/company/blitz-games-ltd_)

UK-based developer that shut down in 2013.
Developed a number of different games, some of which do seem to share common technology.

### B1

This is the term we'll use to refer to Blitz's technology used in earlier games from the PlayStation, Nintendo 64 and
Saturn era, starting with Glover.

- Glover (1998)
- Action Man: Operation Extreme (1999)
- Action Man: Destruction X (2000)
- Frogger 2: Swampy's Revenge (2000)
- Titan A.E. (Demo, 2000) (Cancelled)
- Chicken Run (2000)
- Cubix: Robots For Everyone - Race 'N Robots (?) (2001)
- Disney's Lilo & Stitch: Trouble in Paradise (2002)

| Name | Description    | Status                   | URL                        |
|------|----------------|--------------------------|----------------------------|
| DAT  | Package format | **Done** (minus hashing) | [Link](blitz/blitz_dat.bt) |
| PSI  | Model format   | Partial                  | [Link](blitz/blitz_psi.bt) |

## [Computer Artworks Ltd.](https://www.mobygames.com/company/computer-artworks-ltd)

Developed two games,
[Evolva](https://www.mobygames.com/game/windows/evolva)
and [The Thing](https://www.mobygames.com/game/thing).
Both games appear to be derived from the same in-house technology.

| Name | Description                  | Status                        | Games             | URL                                 |
|------|------------------------------|-------------------------------|-------------------|-------------------------------------|
| 3DF  | Bitmap font descriptor       | Partial                       | The Thing         | [Link](computer-artworks/ca_3df.bt) |
| AN   | Animation data               | Pending                       | The Thing         | N/A                                 |
| BIN  | Entity data                  | Partial                       | The Thing         | [Link](computer-artworks/ca_bin.bt) |
| BT   | Strings                      | **Done**                      | The Thing         | [Link](computer-artworks/ca_bt.bt)  |
| ENT  | Text-based entity descriptor | Pending                       | Evolva            | N/A                                 |
| GEO  | Collision mesh data          | Pending                       | The Thing         | N/A                                 | 
| FX   | Text-based effect descriptor | Pending                       | The Thing         | N/A                                 |
| LVL  | INI level descriptor format  | Pending                       | Evolva, The Thing | N/A                                 |
| MSH  | Mesh data                    | Partial                       | Evolva, The Thing | [Link](computer-artworks/ca_msh.bt) |
| PAK  | ZIP package                  | **Done** (it's a zip :shrug:) | The Thing         | N/A                                 |
| SGH  | 'SceneGraph'                 | Pending                       | Evolva, The Thing | N/A                                 |

## [Gee Whiz! Entertainment](https://www.mobygames.com/company/gee-whiz-entertainment)

| Name | Description    | Status   | Games       | URL                    |
|------|----------------|----------|-------------|------------------------|
| H95  |                | Partial  | Zombie Wars | [Link](geewhiz/h95.md) |
| SB0  | Package format | **Done** | Zombie Wars | [Link](geewhiz/sb0.md) |
| SPR  | Sprite format  | Partial  | Zombie Wars | [Link](geewhiz/spr.md) |

## [Guerrilla Cambridge](https://www.mobygames.com/company/guerrilla-cambridge)

Also known as Millennium Interactive Ltd. and SCE Studio Cambridge.

| Name | Description                       | Status | Games                  | URL                         |
|------|-----------------------------------|--------|------------------------|-----------------------------|
| MWD  | Package format, 'Millennium WAD'? | ...    | C-12: Final Resistance | [Link](millennium/m_mwd.bt) |

## [Triton](https://www.pouet.net/groups.php?which=161)

Demoscene group.
Essentially the predecessor to Starbreeze.
Responsible for the cancelled [Into the Shadows](https://www.pouet.net/prod.php?which=2588) game.

| Name | Description | Status  | Games            | URL                          |
|------|-------------|---------|------------------|------------------------------|
| HDV  | Mesh data   | Partial | Into the Shadows | [Link](triton/triton_hdv.bt) |

