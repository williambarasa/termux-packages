TERMUX_PKG_HOMEPAGE=https://github.com/raboof/nethogs
TERMUX_PKG_DESCRIPTION="Net top tool grouping bandwidth per process"
TERMUX_PKG_VERSION=0.8.5
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/raboof/nethogs/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_FOLDERNAME=nethogs-${TERMUX_PKG_VERSION}
TERMUX_PKG_DEPENDS="ncurses, libpcap"
TERMUX_PKG_MAINTAINER="Pierre Rudloff <contact@rudloff.pro>"
TERMUX_PKG_SHA256=6a9392726feca43228b3f0265379154946ef0544c2ca2cac59ec35a24f469dcc
TERMUX_PKG_EXTRA_MAKE_ARGS="nethogs"
termux_step_pre_configure () {
	export CPPFLAGS="$CPPFLAGS -Wno-c++11-narrowing"
}
