# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="residualvm"
PKG_VERSION="d538a8679f8fa55e6d41aa27160fb4b38f216c3c"
PKG_SHA256="f1d7bc3bb7bcc054cea5d33a131613341834e7b8dfdb7faa57a93258ffe677a8"
PKG_REV="1"
PKG_LICENSE="GPL2"
PKG_SITE="https://github.com/residualvm/residualvm"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL2-git SDL2_net freetype fluidsynth-git libjpeg-turbo libmad"
PKG_SHORTDESC="ResidualVM: A 3D game interpreter"
PKG_LONGDESC="ResidualVM is a game engine reimplementation that allows you to play 3D adventure games such as Grim Fandango, Escape from Monkey Island, Myst III and The Longest Journey."
PKG_TOOLCHAIN="configure"

pre_configure_target() { 
sed -i "s|sdl-config|sdl2-config|g" $PKG_BUILD/configure
TARGET_CONFIGURE_OPTS="--host=${TARGET_NAME} --backend=sdl --enable-optimizations --force-opengles2 --with-sdl-prefix=${SYSROOT_PREFIX}/usr/bin"
}

post_makeinstall_target() { 
for i in applications icons doc man; do
    rm -rf "$INSTALL/usr/local/share/$i"
  done

mkdir -p $INSTALL/usr/config/residualvm/extra
	cp -rf $PKG_DIR/config/* $INSTALL/usr/config/residualvm/
	cp -rf $PKG_BUILD/backends/vkeybd/packs/*.zip $INSTALL/usr/config/residualvm/extra
	mv  $INSTALL/usr/local/bin $INSTALL/usr/
	cp $PKG_DIR/bin/* $INSTALL/usr/bin/
}
