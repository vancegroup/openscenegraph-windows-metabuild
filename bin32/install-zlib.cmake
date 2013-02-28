file(MAKE_DIRECTORY "${INSTALL_PREFIX}/bin" "${INSTALL_PREFIX}/include" "${INSTALL_PREFIX}/lib")
file(INSTALL "${SRC}/zlib1.dll"
	DESTINATION "${INSTALL_PREFIX}/bin")

file(INSTALL "${SRC}/include/zconf.h" "${SRC}/include/zlib.h"
	DESTINATION "${INSTALL_PREFIX}/include")

file(INSTALL "${SRC}/lib/zdll.lib" "${SRC}/lib/zlib.def"
	DESTINATION "${INSTALL_PREFIX}/lib")

