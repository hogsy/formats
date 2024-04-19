//	Project Eden EDN File Decompression Utility
//	Copyright (c) Alan Moczulski 2024

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>

// defined inside "lzjat_decode.s"
extern int __cdecl lzjat_decode(char *compressed, char *uncompressed, int *size, int original_size);

static unsigned int get_file_size(FILE* f)
{
	unsigned int current = ftell(f); // keep current position
	fseek(f, 0, SEEK_END);
	unsigned int size = ftell(f);
	fseek(f, current, SEEK_SET); // set back to where we were
	return size;
}

int main(int argc, char** argv)
{
	int retval = 0;
	
	// the user needs to specify 2 EDN files
	// example usage: ./edn_decompress l9_scavenge.edn l9_scavenge_decompressed.edn
	if (argc != 3)
	{
		fprintf(stdout, "Usage: %s <input EDN file> <output EDN file>\n", argv[0]);
		return 1;
	}

	// open the specified file
	const char* edn_file_path = argv[1];
	FILE* f = fopen(edn_file_path, "rb");
	if (!f)
	{
		fputs("Specified file cannot be read.", stdout);
		return 1;
	}

	int magic;
	fread(&magic, 4, 1, f);
	if (magic == 'PMOC') // "COMP"
	{
		unsigned int original_size; // original decompressed file size
		fread(&original_size, 4, 1, f);
		assert(original_size < 32 * 1024 * 1024); // no EDN file is bigger that 32MiB once uncompressed
		unsigned int compressed_size = get_file_size(f) - 8; // 8 is the size of the 2 previous vars we already read
//		fprintf(stdout, "%u, %u\n", original_size, compressed_size);

		// read whole compressed file into a buffer
		char* compressed = malloc(compressed_size);
		fread(compressed, compressed_size, 1, f);
		
		// allocate enough space and decompress into it
		char* decompressed = malloc(original_size);
		int dummy = original_size;
		lzjat_decode(compressed, decompressed, &dummy, original_size);
		
		// write out the decompressed data to a file
		FILE* fd = fopen("output.edn", "wb");
		if (!fd)
		{
			fputs("Specified file cannot be read.", stdout);
			return 1;
		}
		fwrite(decompressed, original_size, 1, fd);
		fclose(fd);

		free(decompressed);
		free(compressed);
		fputs("File decompressed successfully.", stdout);
	}
	else
	{
		fputs("Specified file is not compressed.", stdout);
		retval = 2;
	}

	fclose(f);
	return retval;
}
