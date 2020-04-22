cd lua-5.1.5
make mingw
cd ..

gcc -shared \
    -o rand.dll \
    lua-5.1.5/src/lua51.dll \
    rand.c \
    mt19937ar.c \
    -Ilua-5.1.5/src

cp rand.dll lua-5.1.5/src

./lua-5.1.5/src/lua.exe test.lua

cd lua-5.1.5
make clean
cd ..

rm rand.dll lua-5.1.5/src/rand.dll
