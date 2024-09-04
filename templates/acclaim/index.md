
# Acclaim Studios Austin

![Acclaim Studios Austin logo](asaustin_logo.png)

## Turok Evolution Engine

Not entirely sure if this engine has another name or not,
but it appears to have been developed during Vexx's and Turok Evolution's development,
with the latter being the first game released utilising it.

Supported the Nintendo GameCube, Sony PlayStation 2, Microsoft Xbox and Microsoft Windows.

### Games

- [Turok: Evolution](https://en.wikipedia.org/wiki/Turok:_Evolution) (2002)
- [Vexx](https://en.wikipedia.org/wiki/Vexx) (2003)
- [The Red Star](https://hiddenpalace.org/Category:The_Red_Star_prototypes) (Cancelled)
- [100 Bullets](https://hiddenpalace.org/Category:100_Bullets_prototypes) (Cancelled)

### Fun Facts

- Engine appears to be primarily written in C++.

### Formats

| Name | Description                                     | Status   | URL                  |
|------|-------------------------------------------------|----------|----------------------|
| TRE  | Package format ('**T**u**R**ok **E**volution'?) | **100%** | [Link](turok_tre.bt) |
| EMI  | '**EMI**tter' definition script                 | **80%**  | [Link](turok_emi.md) |
| TGAX | Texture format                                  | ...      | ...                  |
| TXM  | Key / value script format for text/dialog       | ...      | ...                  |
| MTF  | Common ASA chunk-based file format              | **60%**  | [Link](turok_mtf.bt) |
| ATF  | Common ASA chunk-based file format for actors   | **60%**  | [Link](turok_mtf.bt) |
| FNT  | Common ASA chunk-based file format for fonts    | **60%**  | [Link](turok_mtf.bt) |
| ANM  | '**AN**i**M**ation' format                      | ...      | ...                  |

#### ATF Chunks

| FourCC        | Description                                 | Status   | URL |
|---------------|---------------------------------------------|----------|-----|
| `FILE`/`ELIF` | ...                                         | ...      | ... |
| `MESH`/`HSEM` | ...                                         | ...      | ... |
| `TYPE`/`EPYT` | ...                                         | ...      | ... |
| `SKEL`/`LEKS` | Probably skeleton data.                     | ...      | ... |
| `DATE`/`ETAD` | Null-terminated string representing a date. | **100%** | ... |
| `VERS`/`SREV` | Four byte version number.                   | **100%** | ... |

#### Misc Observations

- For some reason, some files can have multiple `DATE` entries, why?

# [Acclaim Studios Cheltenham](https://www.mobygames.com/company/2152/acclaim-studios-cheltenham/)

![Acclaim Studios Cheltenham logo](ascheltenham_logo.png)

## Unknown Engine

### Games

- [The Last Job](https://www.gamesthatwerent.com/2024/09/the-last-job/)

### Formats

| Name | Description               | Status  | URL                                                                                                                                |
|------|---------------------------|---------|------------------------------------------------------------------------------------------------------------------------------------|
| ALL  | Package/container format. | **80%** | [Link](https://github.com/OldTimes-Software/hei/blob/19b7fc5f3bdf493573ce1fe063f2d33fe09d174d/plcore/package/package_format_all.c) |


# [Acclaim Studios Teesside](https://en.wikipedia.org/wiki/List_of_Acclaim_Entertainment_subsidiaries#Acclaim_Studios_Teesside)

![Acclaim Studios Teeside logo](asteeside_logo.png)

## Vista 3D

The below covers both the earlier '97 iteration of the engine and onwards.

| Name | Description                                  | Status   | URL                                                                                                                                                                                                                                     |
|------|----------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 3DF  | 3dfx texture format (used for 3dfx renderer) | **100%** | [Link](https://groups.google.com/g/comp.graphics.api.opengl/c/DOyoes__iVQ/m/1xrKlM7nnNwJ) ([reference implementation](https://github.com/OldTimes-Software/hei/blob/244efe8214bacf0a4ac6f6d258d7850edea89e06/plcore/image/image_3df.c)) |
| BSP  |                                              | Pending  |                                                                                                                                                                                                                                         |
| BGM  | Background model (?)                         | Pending  |                                                                                                                                                                                                                                         |
| BIN  | Texture data (used for software renderer)    | Pending  |                                                                                                                                                                                                                                         |
| SOB  | Static objects (?)                           | Pending  |                                                                                                                                                                                                                                         |
| MSH  | Mesh data                                    | Pending  |                                                                                                                                                                                                                                         |
| WEI  | Mesh weight data                             | Pending  |                                                                                                                                                                                                                                         |
| TUV  | Mesh UV data (?)                             | Pending  |                                                                                                                                                                                                                                         |
| ANM  | Mesh animation                               | Pending  |                                                                                                                                                                                                                                         |
