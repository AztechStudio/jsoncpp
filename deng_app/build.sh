
if [ $1 ]
then
make clean
exit 0
fi


export CXX=g++
export AR=ar
export STRIP=strip
make