echo -ne '中文' | hexdump -v -e '/1 "%02x"' | sed 's/\(..\)/%\1/g'

#服务端可能要求url编码，可如下：
curl "http://127.0.0.1:5000/?title=`echo -ne '中文' | hexdump -v -e '/1 "%02x"' | sed 's/\(..\)/%\1/g'`"

#POST如下：
curl "http://127.0.0.1:5000/" --data-urlencode "title=中文"
