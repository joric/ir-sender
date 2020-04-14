# these are RC5 (probably) codes for the Mystery (Airmate) Fan, grabbed with IR controller
# originally they were longer but they just repeat 4 times so they're 4 times shorter here

param=backlit

if [ ! -z "$1" ]; then
    param=$1
fi

case $param in
  speed)
    raw=1330,438,1258,440,410,1288,1260,438,1258,440,384,1312,386,1312,412,1286,386,1312,386,1312,1260,440,384
    ;;
  off)
    raw=1266,438,1260,440,412,1284,1260,438,1260,438,408,1288,414,1286,412,1284,410,1288,386,1312,412,1284,1260
    ;;
  rotate)
    raw=1328,440,1258,440,384,1314,1260,438,1262,436,384,1314,382,1316,1258,440,386,1310,388,1310,384,1314,384
    ;;
  mode)
    raw=1330,438,1260,438,410,1288,1260,440,1258,440,412,1284,414,1284,412,1286,412,1286,1262,436,410,1286,410
    ;;
  preset)
    raw=1328,440,1260,438,412,1284,1260,440,1260,440,1258,438,412,1286,386,1310,410,1288,388,1310,1258,440,1262
    ;;
  backlit)
    raw=1330,438,1260,440,410,1286,1258,440,1262,436,1258,438,410,1288,410,1288,414,1284,1260,440,1258,438,414
    ;;
esac

curl -G http://192.168.1.9 --data-urlencode "raw=$raw"

