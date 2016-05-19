# compile perl
```bash
./Configure -des -Dusesitecustomize  -Dinc_version_list=none -Duseshrplib  -Dprefix=/home/git/regentmarkets/perl && make && make test && make install
```
# compile imagemagick
```bash
sudo ln -s /usr/include/freetype2/freetype /usr/include/freetype
./configure CFLAGS=-O2 LDFLAGS=-L/home/git/regentmarkets/perl/lib/5.24.0/x86_64-linux/CORE --prefix=/home/git/regentmarkets/perl \
--with-perl=/home/git/regentmarkets/perl/bin/perl --enable-shared --disable-openmp --disable-opencl --without-x && make && make install
```
