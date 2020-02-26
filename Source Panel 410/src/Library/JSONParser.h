
#ifndef BREEZI_DRIVERS_JSON_JSONPARSER_H_
#define BREEZI_DRIVERS_JSON_JSONPARSER_H_

#include <inttypes.h>
#include <string.h>

#define JSON_MAX_STR_LEN 	(255)
class JSONParser
{
public:
	JSONParser();

	bool setString(const char *str);
	bool getNextKeyValue(char *ptrKey, uint8_t maxKeyLength, char *ptrValue, uint8_t maxValueLength);
private:
	int32_t _posIndex;
	char _str[JSON_MAX_STR_LEN];
};




#endif /* BREEZI_DRIVERS_JSON_JSONPARSER_H_ */
