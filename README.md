# Reversed Format Collection

This repository is filled with various notes on various different formats that I've reversed overtime. A lot of these
are provided in [Rehex](https://github.com/solemnwarning/rehex)'s [Binary Template](https://solemnwarning.net/rehex/manual/bt.html) format,
which is easily translatable into C/C++ and most other languages.

If you find anything here useful, please consider [sponsoring me;](https://github.com/sponsors/hogsy)
otherwise a reference or callout wouldn't hurt!
❤️

Contributions are also welcome!

----

- [Acclaim Entertainment, Inc.](templates/acclaim/index.md)
  - [Vista 3D](templates/acclaim/index.md#vista-3d) (Acclaim Studios Teesside)
    - **Years:** 1999–2002
    - **Platforms:** Microsoft Windows, Nintendo 64, SEGA Dreamcast, Sony PlayStation, Sony PlayStation 2
  - [Unknown Engine](templates/acclaim/index.md#unknown-engine) (Acclaim Studios Cheltenham)
  - [Turok Evolution Engine](templates/acclaim/index.md#turok-evolution-engine)*
    - **Platforms:** Microsoft Windows, Microsoft Xbox, Nintendo GameCube, Sony PlayStation 2
- [BottleRocket Entertainment, Inc.](#bottlerocket-entertainment-inc)
  - [The Mark of Kri Engine](#the-mark-of-kri-engine)*
    - **Years:** 2002–2006
    - **Platforms:** ...
- Core Design
  - [Project Eden Engine](#project-eden-engine-2001)*
    - **Years:** 2001
    - **Platforms:** Microsoft Windows, Sony PlayStation 2
  - [Herdy Gerdy Engine](#herdy-gerdy-engine-2002)*
    - **Years:** 2002
    - **Platforms:** Sony PlayStation 2
- [Lucasfilm Games](templates/lucasfilm)
  - [Ares Engine](templates/lucasfilm/ares/ares.md)
- Oddworld Inhabitants Inc.
  - [Oddworld Stranger's Wrath Engine](templates/oddworld/stranger/stranger.md)*
    - **Years:** 2005
    - **Platforms:** Microsoft Xbox
- SCE Studio Cambridge
  - [Primal Engine](templates/sony/primal/index.md)*
    - **Years:** 2003–2006
    - **Platforms:** Sony PlayStation 2
- [SingleTrac Entertainment Technologies, Inc.](templates/singletrac)
  - [Outwars](templates/singletrac/readme.md#outwars-1998)
    - **Years:** 1998
    - **Platforms:** Microsoft Windows


`*` = Speculated/unofficial name

----

## [Appeal S.A.](https://www.mobygames.com/company/appeal-studios-sa)

![Appeal S.A. logo](templates/appeal/appeal_logo.jpg)

Developers behind [Outcast](https://www.mobygames.com/game/windows/outcast).

| Name | Description | Status  | Games   | URL                                    |
|------|-------------|---------|---------|----------------------------------------|
| MSH  | Mesh format | **80%** | Outcast | [Link](templates/appeal/appeal_msh.bt) |

## [Blitz Games Ltd](https://www.mobygames.com/company/blitz-games-ltd_)

![Blitz Games Ltd logo](templates/blitz/blitz_logo.png)

UK-based developer that shut down in 2013.
Developed a number of different games, some of which do seem to share common technology.

### BlitzTech 1

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

| Name | Description    | Status                                                                                              | URL                                        |
|------|----------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------|
| DAT  | Package format | **Done** ([hashing](https://github.com/OldTimes-Software/hei/blob/master/extras/blitz/blitz.c#L15)) | [Link](templates/blitz/blitz_dat.bt)       |
| PSI  | Model format   | Partial                                                                                             | [Link](templates/blitz/blitz_psi.bt)       |
| SPT  | Texture format | **85%**                                                                                             | [Link](templates/blitz/image_blitz_spt.bt) |

## [BottleRocket Entertainment, Inc.](https://www.mobygames.com/company/6986/bottlerocket-entertainment-inc/)

### The Mark of Kri Engine

#### Games

- [The Mark of Kri](https://www.mobygames.com/game/7648/the-mark-of-kri/) (2002) (Sony PlayStation 2)
- [Rise of the Kasai](https://www.mobygames.com/game/21289/rise-of-the-kasai/) (2005) (Sony PlayStation 2)
- [Xiaolin Showdown](https://www.mobygames.com/game/26311/xiaolin-showdown/) (2006) (Sony PlayStation 2, Sony PSP, Microsoft Xbox)

#### Fun Facts

- Package format uses the extension '.WAD'.
- It uses a fairly simple scripting language, which seemed to fall out of use after the first game.

#### Formats

| Name | Description    | Status  | URL                                                                                    |
|------|----------------|---------|----------------------------------------------------------------------------------------|
| WAD  | Package format | **80%** | [Link](https://github.com/OldTimes-Software/hei/blob/master/extras/pl_extra_kri_wad.c) |

## [Creative Reality](https://www.mobygames.com/company/creative-reality)

![Creative Reality logo](templates/creality/creality_logo.gif)

### Martian Gothic Engine (PC)

Unfortunately only used for one game, which, you guessed it,
was [Martian Gothic: Unification](https://www.mobygames.com/game/martian-gothic-unification).

#### Fun Facts
- Excluding the `QMDX.dll`, which isn't theirs, the oldest file in the PC version is from August 1998.
- According to MobyGames, this was the last title Creative Reality would produce.
- They appear to have made a mistake with the application icon; the largest size has the smaller icon overlaid on top.
- PlayStation port was handled by Coyote Developments Ltd., which [went into administration in 2006](https://find-and-update.company-information.service.gov.uk/company/03657440/filing-history?page=2).
- Some of the textures are appended with 'tiff' which may suggest they used it as an intermediate format before conversion.

#### Formats

| Name    | Description                            | Status   | URL                                               |
|---------|----------------------------------------|----------|---------------------------------------------------|
| GFX/TEX | Texture package                        | **100%** | [Link](templates/creality/creality_format_tex.bt) |
| ATH     | Container table format                 | **50%**  | [Link](templates/creality/creality_format_ath.bt) |
| ATF     | Container format                       | Pending  |                                                   |
| ANM     | Mesh (and animation?) data             | Pending  |                                                   |
| CAM     | Background / camera data               | Pending  | [Link](templates/creality/creality_format_cam.bt) |
| ROOM    | Room data                              | Pending  |                                                   |
| GRP     | Some sort of ANM related table thingy? | Pending  |                                                   |

## [Core Design](https://en.wikipedia.org/wiki/Core_Design)

![Core Design logo](templates/core/core_logo.png)

### Tomb Raider Engine (1996 - 2000)

### Project Eden Engine (2001)

Unaware of any proper name for this particular engine.

#### Description
The engine was developed from scratch with a next-gen mindset that went away from the grid-based logic of Tomb Raider games.
On the graphics side, the PC version included features like normal mapping, environment mapping, variable-rate animations
and real-time morphing, which all used Direct3D 8.0a's fixed-function pipeline.
On the sound side, the most important feature was real-time environment-aware sound effects using DirectSound 8 and EAX 1.0.

#### Fun Facts
- The game uses the GameSpy SDK for multi-player.
- The game was statically linked with `engine_pc.lib` on PC and `engine_ps2.lib` on PS2.
- PlayStation 2 version of the game was botched. It doesn't even use the integrated hardware vector units.
- Some of the internal texture metadata uses the 'tga' extension which may suggest they used it as an intermediate format before conversion.
- An official level editor was planned, but never released due to poor sales.

#### Games

- [Project Eden (2001)](https://www.mobygames.com/game/project-eden)

#### Formats

| Name    | Description                             | Status                      | URL                                    |
|---------|-----------------------------------------|-----------------------------|----------------------------------------|
| ACW     | Actor WAD format                        | **100%**                    | [Link](templates/core/core_acw.bt)     |
| EDN/PDN | Eden Level format                       | **100%**                    | [Link](templates/core/core_edn_pdn.bt) |
| EDI/PDI | Eden Image format                       | Pending                     | N/A						                              |
| EDS/PDS | Eden Sound format                       | Pending                     | N/A						                              |

### Herdy Gerdy Engine (2002)

Unaware of any proper name for this particular engine.
There is some cross-over between this and the engine developed for the cancelled Tomb Raider Anniversary.

#### Games

- [Herdy Gerdy (2002)](https://www.mobygames.com/game/herdy-gerdy)

#### Formats

| Name    | Description                             | Status                      | URL                                    |
|---------|-----------------------------------------|-----------------------------|----------------------------------------|
| CLU     | Package format                          | **100%**                    | [Link](templates/core/core_clu.bt)     |
| HGT     | Texture format ('Herdy Gerdy Texture'?) | **50%** (container for BMP) | [Link](templates/core/core_hgt.bt)     |
| HGM     | Model format ('Herdy Gerdy Model'?)     | Pending                     | N/A                                    |
| GLV     | Level format ('Gerdy Level'?)           | Pending                     | N/A                                    |

## [Computer Artworks Ltd.](https://www.mobygames.com/company/computer-artworks-ltd)

![Computer Artworks Ltd. logo](templates/computer-artworks/computer-artworks_logo.png)

Developed two games, [Evolva](https://www.mobygames.com/game/windows/evolva)
and [The Thing](https://www.mobygames.com/game/thing).
Both games appear to be derived from the same in-house technology.

| Name | Description                  | Status                        | Games             | URL                                           |
|------|------------------------------|-------------------------------|-------------------|-----------------------------------------------|
| 3DF  | Bitmap font descriptor       | **70%**                       | The Thing         | [Link](templates/computer-artworks/ca_3df.bt) |
| AN   | Animation data               | Pending                       | The Thing         | N/A                                           |
| BIN  | Entity data                  | Partial                       | The Thing         | [Link](templates/computer-artworks/ca_bin.bt) |
| BT   | Strings                      | **80%**                       | The Thing         | [Link](templates/computer-artworks/ca_bt.bt)  |
| ENT  | Text-based entity descriptor | Pending                       | Evolva            | N/A                                           |
| GEO  | Collision mesh data          | Pending                       | The Thing         | N/A                                           | 
| FX   | Text-based effect descriptor | Pending                       | The Thing         | N/A                                           |
| LVL  | INI level descriptor format  | Pending                       | Evolva, The Thing | N/A                                           |
| MSH  | Mesh data                    | Partial                       | Evolva, The Thing | [Link](templates/computer-artworks/ca_msh.bt) |
| PAK  | ZIP package                  | **100%** (it's a zip :shrug:) | The Thing         | N/A                                           |
| SGH  | 'SceneGraph'                 | Pending                       | Evolva, The Thing | N/A                                           |

## [Gee Whiz! Entertainment](https://www.mobygames.com/company/gee-whiz-entertainment)

| Name | Description    | Status   | Games       | URL                              |
|------|----------------|----------|-------------|----------------------------------|
| H95  |                | Partial  | Zombie Wars | [Link](templates/geewhiz/h95.md) |
| SB0  | Package format | **100%** | Zombie Wars | [Link](templates/geewhiz/sb0.md) |
| SPR  | Sprite format  | Partial  | Zombie Wars | [Link](templates/geewhiz/spr.md) |

## [Guerrilla Cambridge](https://www.mobygames.com/company/guerrilla-cambridge)

Also known as Millennium Interactive Ltd. and SCE Studio Cambridge.

| Name | Description                       | Status | Games                  | URL                                   |
|------|-----------------------------------|--------|------------------------|---------------------------------------|
| MWD  | Package format, 'Millennium WAD'? | ...    | C-12: Final Resistance | [Link](templates/millennium/m_mwd.bt) |

## [Infogrames Studios Limited](https://www.mobygames.com/company/infogrames-studios-limited)

Also known as Gremlin Interactive Limited.
Developed games such as Hogs of War, Actua Soccer, Realms of the Haunting and many more.

Didn't really have an engine, but some of their games share some technology.

| Name | Description | Status  | Games             | URL                            |
|------|-------------|---------|-------------------|--------------------------------|
| MIN  | Model data  | Partial | Hogs of War (PSX) | [Link](templates/gremlin/gremlin_min.bt) |

## [Midway Studios Austin](https://en.wikipedia.org/wiki/Midway_Studios_Austin)

Also known as Inevitable Entertainment, Inc..

![Midway Studios Austin logo](templates/msaustin/msaustin_logo.png)

### Unknown Engine

Games using this technology range from the following.

- [Tribes: Aerial Assault](https://en.wikipedia.org/wiki/Tribes:_Aerial_Assault) (2002) (*need to confirm*)
- Defender (*need to confirm*)
- [The Hobbit](https://en.wikipedia.org/wiki/The_Hobbit_(2003_video_game)) (2003)
- [Area 51](https://en.wikipedia.org/wiki/Area_51_(2005_video_game)) (2005)

| Name    | Description                                  | Status                                   | URL                                         |
|---------|----------------------------------------------|------------------------------------------|---------------------------------------------|
| DFS     | TOC for packed data                          | Partial (**70%** for v1, **60%** for v3) | [Link](templates/msaustin/msaustin_dfs.bt)  |
| .000    | Packed data                                  | **100%** (see *DFS*)                     | [Link](templates/msaustin/msaustin_dfs.bt)  |
| XBMP    | Bitmap data                                  | ...                                      | [Link](templates/msaustin/msaustin_xbmp.bt) |
| MATX    | Plaintext model data (unused? intermediate?) | Pending                                  | ...                                         |
| NPCGEOM | NPC geometry data                            | Pending                                  | ...                                         |
| RGEOM   | 'Regular'(?) geometry data                   | Pending                                  | ...                                         |
| FXO     | Effect data                                  | Pending                                  | ...                                         |

## [nStigate Games]()

![nStigate Games logo](https://upload.wikimedia.org/wikipedia/en/thumb/9/93/NStigate_Games_Logo.jpeg/220px-NStigate_Games_Logo.jpeg)

Also known as Nihilistic Software.

### NOD Engine (2000 - ?)

Used for the following games.

- Vampire: The Masquerade –
  Redemption ([source](https://en.wikipedia.org/wiki/Vampire:_The_Masquerade_%E2%80%93_Redemption#Technology))
- StarCraft: Ghost (Cancelled)

| Name | Description                        | Status  | URL                                   |
|------|------------------------------------|---------|---------------------------------------|
| NAD  | Animation format                   | Pending | ...                                   |
| NCE  | ...                                | Pending | ...                                   |
| NCS  | ...                                | Pending | ...                                   |
| NOC  | ...                                | Pending | ...                                   |
| NOD  | Model format, 'Object Description' | Partial | [Link](templates/nihilistic/n_nod.bt) |
| NNB  | ...                                | Pending | ...                                   |
| NMB  | ...                                | Pending | ...                                   |
| NMS  | ...                                | Pending | ...                                   |
| NRT  | ...                                | Pending | ...                                   |
| NUT  | ...                                | Pending | ...                                   |

## [Tate Interactive](https://en.wikipedia.org/wiki/Tate_Multimedia)

![Tate logo](templates/tate/tate_logo.png)

Polish company primarily known for producing [Kao the Kangaroo](https://en.wikipedia.org/wiki/Kao_the_Kangaroo_(2000_video_game)).
Seems that the engine they developed ended up getting used for a number of different games and ported to a number of
different platforms.

### Denis Engine

Listing this separately for now as it seems quite different to the tech used in their later titles.
Name was picked based on the code path indicated by strings in Penguin Kelvin, specifically, `C:\coders\denis\denis\`.

#### Games

Only confirmed titles are here.
Confirmation is performed by finding matching/similar formats, and matching/similar class names and strings in the
executable.

- [Penguin Kelvin](https://www.myabandonware.com/game/penguin-kelvin-frh)
  - Microsoft Windows, 2003

#### Formats
| Name | Description    | Status | URL                                      |
|------|----------------|--------|------------------------------------------|
| PAK  | Package format | ...    | [Link](templates/tate/tate_denis_pak.bt) |

### Tate/Elephant Engine

As usual, I've decided to use this name to identify the technology but otherwise can't find any official name or term
used for the engine. There is a config file in a few titles named 'elephant', which happens to align with their logo
and who knows, might have served as an internal name for the engine.

#### Games

Only confirmed titles are here. 
Confirmation is performed by finding matching/similar formats, and matching/similar class names and strings in the 
executable.

- [Kao the Kangaroo: Round 2](https://en.wikipedia.org/wiki/Kao_the_Kangaroo:_Round_2)
  - Microsoft Windows, 2003
  - Sony PlayStation 2, 2005
- [My Horse & Me 2](https://en.wikipedia.org/wiki/My_Horse_%26_Me_2)
  - Sony PlayStation 2, 2008
- [I Love Horses: Rider's Paradise](https://gamefaqs.gamespot.com/wii/643133-i-love-horses-riders-paradise)
  - Nintendo Wii, 2011

#### Fun Facts
- [I Love Horses: Rider's Paradise](https://gamefaqs.gamespot.com/wii/643133-i-love-horses-riders-paradise), 
which is attributed as a Destineer title, appears to use this engine. 
It may have originally been intended as a sequel to 
[My Horse & Me 2](https://en.wikipedia.org/wiki/My_Horse_%26_Me_2).

#### Formats
| Name | Description    | Status | URL                                |
|------|----------------|--------|------------------------------------|
| PAK  | Package format | ...    | [Link](templates/tate/tate_pak.bt) |

## [Team Ico](https://en.wikipedia.org/wiki/Team_Ico) (1993 - 2021)

![Team Ico logo](templates/ico/ico_logo.png)

| Name | Description              | Status                    | URL                             |
|------|--------------------------|---------------------------|---------------------------------|
| DF   | Container/package format | **90%** (still uncertain) | [Link](templates/ico/ico_df.bt) |

## [Triton](https://www.pouet.net/groups.php?which=161)

![Triton logo](templates/triton/triton_logo.png)

Demoscene group, and essentially the predecessor to Starbreeze.
Responsible for the cancelled [Into the Shadows](https://www.pouet.net/prod.php?which=2588) game.

| Name | Description | Status  | Games            | URL                                    |
|------|-------------|---------|------------------|----------------------------------------|
| HDV  | Mesh data   | **75%** | Into the Shadows | [Link](templates/triton/triton_hdv.bt) |
