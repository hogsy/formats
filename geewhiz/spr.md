# SPR File Format

The SPR format is used for storing image data (who would've guessed?)

Multiple sprites can be packed into the SPR format.

Appears to depend on a palette?

## Format Specification

Four unknown bytes... (255 255 255 255)

Followed by...

* W / INT16
* H / INT16

And then indexed bytes for image (making each frame super small!)

## Files

All player sprites are prefixed with *_*, perhaps they wanted to allow
people to add their own sprites? Hey ho.

* **_H.SPR** : Halloween Harry sprites
