#include <stdarg.h>

int vaargf(int nr, ...) {
	va_list ap;
	int ret;

	va_start(ap, nr);
	ret = va_arg(ap, int);
	va_end(ap);
	return ret;
}
