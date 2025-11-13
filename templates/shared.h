/* Template created by Mark "hogsy" Sowden <markelswo@gmail.com>
* -------------------------------------------------------------
 * Purpose:		Utility header for use with binary templates.
 * Created:		2025-11-03
 * Modified:	2025-11-03
 */

/**
 * Produces fourcc from the given characters.
 */
uint32_t fourcc( char A, char B, char C, char D )
{
	return ( ( ( D ) << 24 ) + ( ( C ) << 16 ) + ( ( B ) << 8 ) + ( A ) );
}

/**
 * Produces fourcc from the given characters (only reversed).
 */
uint32_t fourcc_r( char A, char B, char C, char D )
{
	return ( ( ( A ) << 24 ) + ( ( B ) << 16 ) + ( ( C ) << 8 ) + ( D ) );
}

/**
 * Unpacks the given fourcc into a string.
 */
string unpack_fourcc( uint32_t tag )
{
	local char str[5];
	str[0] = ( tag >> 0 ) & 0xFF;
	str[1] = ( tag >> 8 ) & 0xFF;
	str[2] = ( tag >> 16 ) & 0xFF;
	str[3] = ( tag >> 24 ) & 0xFF;

	return SPrintf("%s", str);
}

/**
 * Sets a comment at the current location.
 */
void set_comment_at( string text, int64_t length )
{
	SetComment( FTell(), length, text );
}

// our own wrappers around the Read* methods, as they don't progress filepos :(

uint32_t read_u32()
{
	local uint32_t v = ReadU32();
	FSkip(4);
	return v;
}
