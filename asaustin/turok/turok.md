# Turok Evolution Engine

Not entirely sure if this engine has another name or not,
but it appears to have been developed during Vexx's and Turok Evolution's development,
with the latter being the first game released utilizing it.

Supported the Nintendo GameCube, Sony PlayStation 2, Microsoft Xbox and Microsoft Windows.

- [Turok: Evolution](https://en.wikipedia.org/wiki/Turok:_Evolution) (2002)
- [Vexx](https://en.wikipedia.org/wiki/Vexx) (2003)
- [The Red Star](https://hiddenpalace.org/Category:The_Red_Star_prototypes) (Cancelled)
- [100 Bullets](https://hiddenpalace.org/Category:100_Bullets_prototypes) (Cancelled)

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

## ATF Chunks

| FourCC        | Description                                 | Status   | URL |
|---------------|---------------------------------------------|----------|-----|
| `FILE`/`ELIF` | ...                                         | ...      | ... |
| `MESH`/`HSEM` | ...                                         | ...      | ... |
| `TYPE`/`EPYT` | ...                                         | ...      | ... |
| `SKEL`/`LEKS` | Probably skeleton data.                     | ...      | ... |
| `DATE`/`ETAD` | Null-terminated string representing a date. | **100%** | ... |
| `VERS`/`SREV` | Four byte version number.                   | **100%** | ... |

### Misc Observations

- For some reason, some files can have multiple `DATE` entries, why?
