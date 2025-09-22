# Haven Call of the King Notes

Game is all derived from TTs own tech.
They had a pretty long history of developing their own in-house tech, which is sadly no longer going to be the case as of 2022, having now switched to Unreal Engine.

Unsurprisingly as we look at the game in Ghidra, it quickly becomes apparent the game was written in C.
Not all uncommon for the time.

Uses TTs Nu2 engine.
There are likely more that we're not seeing.
Again, it's all written in C (unsurprising).

Per the final game and demo, the ELF is internally packed—everything gets unpacked into memory when the game launches.
This uses RNC ProPack for the packing. Their Nu2 framework provides a method for unpacking.
I used [this](https://github.com/lab313ru/rnc_propack_source) to unpack.

## Internal Project Name

Curiously the source path reveals it under a project folder called `psrunabout`, and the demo ELF is named `RUNABOUT`.
My guess is that this is a _very_ early name for the project, or the name of a different project?
There are minimal references to it in the unpacked game logic.

Many of the script methods are prefixed with 'RW'; it seems as if this stands for 'RealWorld'.
```
RWNAME		ferra ferra					; name of realworld data set to load - 2nd parameter is wacky directory override
```

Per the strings in the game ELF, we can also see mentions of source files under `realwlds`, which again alludes to the 'RealWorld' working name?
Though curiously, it sounds like these were under their own library rather than part of the actual game code itself (see `nu2.ps2` vs. `realwlds.ps2`, and everything else just `.\<name>.c` instead).

To confuse things further, however, there's another internal name referenced; RealWorlds, often abbreviated as `realwlds`.

## DATA/RWLDS.DAT

Same format as the [DLL.DAT](#DLL.DAT) file.

Seems to contain a collection of scripts and other data.
Probably the bulk of the data that isn't sound or music, judging for everything else under the same directory.

Okay, table of contents is at the end followed by a table of strings (485669057) which are probably all the filenames—each one is null-terminated.
The first four bytes of the file indicate the offset of the files.
Data might be padded. Another nice tradition.

The Structure of this is a little odd due to how names are handled.
At the bottom of the file is a string table.

No hashed names, or compression for that matter.

There's some [CVS](https://cvs.nongnu.org/) files leftover from a checkout in here.

### Extracted Data

Below, I've just pointed out a few notable files.

* `fonts/testfontbmp`; some font featuring Crash Bandicoot. Probably left-over from Crash Bandicoot: The Wrath of Cortex.

## GHG Format

These notes are particular to the Trike model...

Possibly 20 textures packed into the file.

## ATS Format

These appear to be scripts controlling texture animations?
Maybe ATS stand for animated texture script?

## CSC Format

Seems to be used for controlling cutscenes.
Most of the ones I've seen are very primitive.
There are *cut* files that likely include pathing and other crud for cutscenes.

## GSC Format

Quite large files. Probably holds all the geometry and texture data?
Definitely holds texture data for level geometry.

## RW3 Format

Contains textures for the worlds? ... Hm, it's a big mix.

### Nearing Deadline

From the revision log, it seems they were tweaking elements of the game content all the way up until late August 2002.
The game would be released in November of the same year.
