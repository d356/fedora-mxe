FROM fedora:22
RUN dnf install -y \
    autoconf automake bash bison bzip2 cmake flex gcc-c++ \
    gettext git gperf intltool make sed libffi-devel \
    libtool openssl-devel p7zip patch perl pkgconfig \
    python ruby scons unzip wget xz
RUN git clone https://github.com/mxe/mxe.git ; \
    cd mxe ; \
    make MXE_TARGETS='x86_64-w64-mingw32.static' gcc qt5 cmake sdl2 make