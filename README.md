openscenegraph-windows-metabuild
================================

OSG and its dependencies for building on Windows.

## Compiler Compatibility Guidelines

- Must match bit-depth (32 vs 64)
- C API only if mixing compiler versions (using a pre-built DLL, etc.)
- For dependencies that are common (zlib), all users must have been built against a compatible (hopefully identical) build.
- Try to keep code compiled against the debug runtime and the standard runtime separate.

### References
- <http://www.mingw.org/wiki/MixingCompilers>


## Still needed:
These were observed in the current binaries we're using (32-bit, VC8). These are only the dynamically linked dependencies so far.

- `libcollada14dom22.dll`
	- from an older version (2.2) of the COLLADA 1.4 DOM, not sure who built it but I think I (Ryan Pavlik) did.
	- currently mirroring to Git at <https://github.com/vancegroup-mirrors/collada-dom>

- `freetype6.dll` ([FreeType2][])
	- Current version is from [GnuWin32][], identified as follows in the properties:
		- `"FileDescription", "Libfreetype: font engine and rasterizer"`
		- `"FileVersion", "2.3.5.2742"`
		- `"LibToolFileVersion", "9:16:3"`
		- `"LegalCopyright", "© 2007 D. Turner, R. Wilhelm, W. Lemberg"`

- `jpeg62.dll` ([JPEG][] from the Independent JPEG Group)
	- Current version looks like it  is from [GnuWin32][], identified as follows in the properties:
		- `"FileDescription", "Jpeg: library and tools for JPEG images"`
		- `"FileVersion", "6b.1961.25445"`
		- `"LibToolFileVersion", "62:0:0"`
		- `"LegalCopyright", ""© 2005 Independent JPEG Group <www.ijg.org>"`

- `libpng12.dll`
	- Current version is from [GnuWin32][], identified as follows in the properties:
		- `"FileDescription", "Libpng12: PNG image compression library"`
		- `"FileVersion", "1.2.37.3442"`
		- `"LibToolFileVersion", "3:37:0"`
		- `"LegalCopyright", "© 2009 1998-2008 Glenn Randers-Pehrson <glennrp@users.sourceforge.net>, 1996-1997 Andreas Dilger, 1995-1996 Guy Eric Schalnat, Group 42, Inc."`

- `libtiff3.dll` ([libtiff][])
	- Current version is from [GnuWin32][], identified as follows in the properties:
		- `"FileDescription", "Libtiff3: library and tools for TIFF images"`
		- `"FileVersion", "3.8.2.2278"`
		- `"LibToolFileVersion", "5:8:2"`
		- `"LegalCopyright", "© 2006 Sam Leffler, Silicon Graphics, Inc."`
		- `"PrivateBuild", "Patchlevel 1"`

- `libungif4.dll` ([LibUnGif][])
	- Current version is from GnuWin32, identified as follows in the properties:
		- `"FileVersion", "4.1.4.2616"`
		- `"LibToolFileVersion", "5:4:1"`
		- `"LegalCopyright", "© 2007 Gershon Elber, Toshio Kuratomi <abadger1999@users.sourceforge.net>"`
		- `"PrivateBuild", "Patchlevel 1"`

- `libxml2.dll` ([libxml2][])
	- No data in properties to identify the version currently in use.
	- [Windows port and binaries available from Igor Zlatkovic][libxml2windows], but latest is libxml2-2.7.8, from June 19, 2011.
	- Upstream is in GNOME Git: `git://git.gnome.org/libxml2` ([web view][libxml2git]) - Looks like we might want post-2.9.0 for Windows fixes.
	- We only need libxml2 from the suite.
	- Depends on zlib, and web site indicates it depends on iconv

- `zlib1.dll` ([zlib][])
	- Since this one is very common, the authors prefer you to use their distribution of the binaries or change the name, IIRC.
	- Current version is from GnuWin32 (really?), identified as follows in the properties:
		- `"FileDescription", "Zlib1: general purpose data compression / decompression library"`
		- `"FileVersion", "1.2.3.2532"`
		- `"LibToolFileVersion", "4:2:3"`
		- `"LegalCopyright", "© 2006 Jean-loup Gailly <jloup@gzip.org >, Mark Adler <madler@alumni.caltech.edu>"`
		- `"PrivateBuild", "Patchlevel 1"`

[GnuWin32]:http://gnuwin32.sourceforge.net
[FreeType2]:http://www.freetype.org
[JPEG]:http://www.ijg.org
[libtiff]:http://www.remotesensing.org/libtiff
[LibUnGif]:http://sourceforge.net/projects/libungif
[libxml2]:http://www.xmlsoft.org
[libxml2windows]:http://www.zlatkovic.com/libxml.en.html
[libxml2git]:http://git.gnome.org/browse/libxml2/
[zlib]:http://www.zlib.net
