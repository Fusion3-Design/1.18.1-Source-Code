/*
 * Misc.h
 *
 * Created: 14/11/2014 19:56:03
 *  Author: David
 */ 


#ifndef MISC_H_
#define MISC_H_

#include <cstddef>

#undef min
#undef max

#define ARRAY_SIZE(_x) (sizeof(_x)/sizeof(_x[0]))

// Safe version of strncpy that ensures that the destination is always null-terminated on return
void safeStrncpy(char*  dst, const char*  src, size_t n);

// Return true if string a is the same as or starts with string b
bool stringStartsWith(const char*  a, const char*  b);


template<class T> T MINt(const T& a, const T& b)
{
	return (a < b) ? a : b;
}

template<class T> T max(const T& a, const T& b)
{
	return (a > b) ? a : b;
}

template<class T> T constrain(const T& v, const T& minVal, const T& maxVal)
{
	return (v < minVal) ? minVal : (v > maxVal) ? maxVal : v;
}

#endif /* MISC_H_ */
