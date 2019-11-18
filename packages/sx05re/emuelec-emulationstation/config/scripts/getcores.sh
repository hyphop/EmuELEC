#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

# WARNING: This file gets overwritten when the version of EmuELEC changes
# if $2 is "default" it will only get the first choice in the array which is assumed to be default

case "$1" in
"amstradcpc")
	CORES="cap32_libretro"
	;;
"atari2600")
	CORES="stella2014_libretro"
	;;
"atari5200")
	CORES="atari800_libretro"
	;;
"ngp"|"ngpc")
	CORES="mednafen_ngp_libretro"
	;;
"residualvm")
	CORES="RESIDUALVM"
	;;
"atari800")
	CORES="atari800_libretro"
	;;
"sega32x")
	CORES="picodrive_libretro"
	;;
"atari7800")
	CORES="prosystem_libretro"
	;;
"atarilynx")
	CORES="handy_libretro"
	;;
"atarist")
	CORES="hatari_libretro,HATARISA"
	;;
"atomiswave")
	CORES="flycast_libretro"
	;;
"naomi")
	CORES="flycast_libretro"
	;;
"wonderswan"|"wonderswancolor")
	CORES="mednafen_wswan_libretro"
	;;
"c128")
	CORES="vice_x128_libretro"
	;;
"c64")
	CORES="vice_x64_libretro"
	;;
"c16")
	CORES="vice_xplus4_libretro"
	;;
"vic20")
	CORES="vice_xvic_libretro"
	;;
"colecovision"|"sc-3000"|"msx"|"msx2")
	CORES="bluemsx_libretro"
	;;
"daphne")
	CORES="daphne_libretro"
	;;
"odyssey2"|"videopac")
	CORES="o2em_libretro"
	;;
"intellivision")
	CORES="freeintv_libretro"
	;;
"virtualboy")
	CORES="mednafen_vb_libretro"
	;;
"openbor")
	CORES="OPENBOR"
	;;
"3do")
	CORES="4do_libretro"
	;;
"pcfx")
	CORES="mednafen_pcfx"
	;;
"vectrex")
	CORES="vecx_libretro"
	;;
"gameandwatch")
	CORES="gw_libretro"
	;;
"pcengine"|"pcenginecd"|"tg16"|"tg16cd")
	CORES="mednafen_pce_fast_libretro"
	;;
"supergrafx")
	CORES="mednafen_supergrafx_libretro"
	;;
"fbn"|"neogeo")
	CORES="fbneo_libretro,mame2003_plus_libretro,fbalpha2012_libretro"
	;;
"arcade"|"capcom"|"cps1"|"cps2"|"cps3")
	CORES="mame2003_plus_libretro,AdvanceMame,mame2010_libretro,fbneo_libretro,mba_mini_libretro"
	;;
"mame")
	CORES="AdvanceMame,mame2003_plus_libretro,mame2010_libretro,fbneo_libretro,mba_mini_libretro"
	;;
"psp")
	CORES="PPSSPPSA,ppsspp_libretro"
	;;
"n64")
	CORES="mupen64plus_next_libretro,mupen64plus_libretro,parallel_n64_libretro"
	;;
"nes"|"nesh"|"famicom"|"fds")
	CORES="nestopia_libretro,fceumm_libretro"
	;;
"snes"|"sfc"|"snesh")
	CORES="snes9x_libretro,snes9x2002_libretro,snes9x2005_plus_libretro"
	;;
"snesmsu1")
	CORES="snes9x_libretro"
	;;
"genesis"|"segacd"|"genh"|"megadrive"|"megadrive-japan")
	CORES="genesis_plus_gx_libretro,picodrive_libretro"
	;;
"mastersystem"|"gamegear"|"ggh"|"sg-1000")
	CORES="gearsystem_libretro,genesis_plus_gx_libretro,picodrive_libretro"
	;;
"gba"|"gbah")
	CORES="mgba_libretro,gpsp_libretro,vbam_libretro,vba_next_libretro"
	;;
"saturn")
	CORES="yabasanshiro_libretro"
	;;
"x68000")
	CORES="px68k_libretro"
	;;
"zx81")
	CORES="81_libretro"
	;;
"zxspectrum")
	CORES="fuse_libretro"
	;;
"gbc"|"gb"|"gbh"|"gbch")
	CORES="gambatte_libretro,gearboy_libretro,tgbdual_libretro"
	;;
"amiga"|"amigacd32")
	CORES="AMIBERRY,puae_libretro,uae4arm_libretro"
	;;
"pc")
	CORES="DOSBOXSDL2,dosbox_svn_libretro"
	;;
"psx")
	CORES="pcsx_rearmed_libretro"
	;;
"nds")
	CORES="DRASTIC"
	;;
"dreamcast")
	CORES="flycast_libretro,REICASTSA,REICASTSA_OLD"
	;;
"scummvm")
	CORES="SCUMMVMSA,scummvm_libretro"
	;;
"neocd")
	CORES="libneocd_libretro,fbneo_libretro"
	;;
"setup")
	CORES="SETUP"
	;;
esac

[[ $2 == "default" ]] && CORES="$(echo ${CORES} | cut -d',' -f1)"

echo $CORES
