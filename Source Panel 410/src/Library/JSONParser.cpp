
#include "JSONParser.h"
#include <memory.h>

static int32_t findNextDelimiter(uint8_t startPos, char *str, char *delimiters) //returns next location or -1
{
	int32_t loc;

	loc=startPos;

	while (loc<(int32_t)strlen(str))
	{
		int32_t j;
		for (j=0; j<(int32_t)strlen(delimiters); j++)
		{
			if (str[loc] == delimiters[j])
			{
				return loc;
			}
		}
		loc=loc+1;
	}
	return -1;
}

static int32_t findPreviousDelimiter(uint8_t startPos, char *str, char *delimiters) //returns next location or -1
{
	int32_t loc;

	loc=startPos;

	while (loc>=0)
	{
		int32_t j;
		for (j=0; j<(int32_t)strlen(delimiters); j++)
		{
			if (str[loc] == delimiters[j])
			{
				return loc;
			}
		}
		loc=loc-1;
	}
	return -1;
}

static bool getStringBefore(uint8_t lastCharPos, char *hayStack, char *str, uint8_t maxStrLen, char *delimiters)
{
	int32_t end, start;
	int32_t j;
	bool done=false;

	end=lastCharPos;

	//remove all delimiters
	while(!done)
	{
		int32_t x;
		x=end;
		for (j=0; j<(int32_t)strlen(delimiters); j++)
		{
			if (hayStack[end] == delimiters[j])
			{
				if (end<=1)
				{
					return false;
				}
				end--;
			}
		}
		if (x==end)
		{
			done=true;
		}
	}

	//find previous delimiters
	start=findPreviousDelimiter(end,hayStack,delimiters);
	start++; //index past delimiter

	if (start >= 0 && end>=0)
	{
		int32_t i;

		i=0;
		if (hayStack[start]==' ') //if first char is space, skip it.
		{
			start++;
		}
		while (i<maxStrLen)
		{

			str[i]=hayStack[start];
			i++;
			str[i]=0;
			start++;
			if (start > end)
			{
				return true;
			}
		}
	}
	return false;
}

static bool getStringAfter(uint8_t firstCharPos, char *hayStack, char *str, uint8_t maxStrLen, char *delimiters)
{
	int32_t end, start;
	int32_t j;
	bool done=false;

	start=firstCharPos;

	//remove all delimiters
	while(!done)
	{
		int32_t x;
		x=start;
		for (j=0; j<(int32_t)strlen(delimiters); j++)
		{
			if (hayStack[start] == delimiters[j])
			{
				if (start>=(int32_t)strlen(hayStack))
				{
					return false;
				}
				start++;
			}
		}
		if (x==start)
		{
			done=true;
		}
	}

	//find next delimiters
	end=findNextDelimiter(start,hayStack,delimiters);
	if (end==-1)
	{
		end=strlen(hayStack);
	}

	if (start >= 0 && end>=0)
	{
		int32_t i;


		i=0;
		while (i<maxStrLen)
		{
			str[i]=hayStack[start];
			i++;
			str[i]=0;
			start++;
			if (start == end)
			{
				return true;
			}
		}
	}
	return false;
}

JSONParser::JSONParser()
{
	_posIndex=0;
	memset(_str,0,sizeof(_str));
}


bool JSONParser::getNextKeyValue(char *ptrKey, uint8_t maxKeyLength, char *ptrValue, uint8_t maxValueLength)
{
	char keyValueDelimiter[]=":"; //json uses colon as key/value delimiter
	char stringDelimiters[]="',\"\n\r{}:"; //json string delimiters

	bool ret;
	int32_t loc;

	if (_posIndex>=(int32_t)strlen(_str))
	{
		return false;
	}

	//JSON key values are separated by ':'
	loc=findNextDelimiter(_posIndex,_str,keyValueDelimiter);
	if (loc == -1 || loc>=(int32_t)strlen(_str))
	{
		return false;
	}

	//if it is not a colon we have a problem
	if (_str[loc]!=keyValueDelimiter[0])
	{
		return false;
	}
	_posIndex=loc+1; //set next key value search ahead of this delimiter

	ret=getStringBefore(loc,_str,ptrKey,maxKeyLength,stringDelimiters);
	if (ret)
	{
		ret=getStringAfter(loc,_str,ptrValue,maxValueLength,stringDelimiters);
	}

	//just in case send empty strings back
	if (ret == false)
	{
		ptrKey[0]=0;
		ptrValue[0]=0;
	}

	return ret;
}


bool JSONParser::setString(const char *str)
{
	int32_t i;
	i=strlen(str);
	if (i>(int32_t)sizeof(_str))
	{
		return false;
	}
	memset(_str,0,sizeof(_str)); //zero string to remove old data
	memcpy(_str,str,i);
	_posIndex=0;
	return true;
}
