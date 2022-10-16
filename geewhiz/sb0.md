# SB0 File Format

The SB0 file format appears to essentially be a generic package
format used to store data for the game.

There's no support for compression.

```c
typedef struct Sb0Header {
    uint8_t id_length;  /* should always be 10 */
    char    id[10];     /* always SUB0FILE10, not null terminated */
} Sb0Header;
```

Following the identifier, there is a list of file indices. These are read in
until '------------' is read.

Each file index appears to be of the following format, which is kind of a mess...

```c
typedef struct Sb0Index {
    uint8_t     name_length;
    char        name[12];       /* not null terminated */
    uint32_t    offset_start;
    uint32_t    offset_end;
} Sb0Index;
```

----

* `LOCAL.SB0` : Used for dialogue bitmaps etc.
