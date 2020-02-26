/*
 * Misc.cpp
 *
 * Created: 14/11/2014 19:58:50
 *  Author: David
 */ 

#include "Misc.hpp"

// Safe version of strncpy that ensures that the destination is always null-terminated on return
void safeStrncpy(char*  dst, const char*  src, size_t n)
{
	while (*src != 0 && n > 1)
	{
		*dst++ = *src++;
		--n;
	}
	*dst = 0;
}

// Return true if string a is the same as or starts with string b
bool stringStartsWith(const char*  a, const char*  b)
{
	while (*b != 0)
	{
		if (*a++ != *b++)
		{
			return false;
		}
	}
	return true;
}

// End
