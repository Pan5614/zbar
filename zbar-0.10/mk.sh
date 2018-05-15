#!/bin/sh


export NM=nm

echo "hello world!"
workdir=$(cd $(dirname $0); pwd)


echo ${workdir}


aa=${workdir}/../mylib/zbar_qr

echo ${aa}

output=${workdir}/out

echo ${output}

mkdir -p ${output}

./configure --prefix=${aa} CC=mips-linux-gnu-gcc CXX=mips-linux-gnu-g++ --host=mips-linux  --disable-video --without-imagemagick --without-qt --without-python --without-gtk

make && make install

