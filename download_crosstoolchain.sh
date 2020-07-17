#! /bin/bash

#function to download the  linaro GCC cross toolchain
#=====================================================
readonly CROSS_COMPILER_NAME="gcc-linaro-5.5.0-2017.10-x86_64_arm-linux-gnueabihf"
readonly CROSS_COMPILER_ARCHIVE="${CROSS_COMPILER_NAME}.tar.xz"
readonly CROSS_COMPILER_LINK="https://releases.linaro.org/components/toolchain/binaries/latest-5/arm-linux-gnueabihf/${CROSS_COMPILER_ARCHIVE}"
readonly CROSS_COMPILER_PATH="${HOME}/Toolchain"



function download_GCC_ToolChain()
{
	echo "Downloading Linaro GCC cross toolchain begin ! "
	(( `ls ${CROSS_COMPILER_PATH} 2>/dev/null | wc -l` == 0 )) && {
 	echo "Downloading Linaro GCC cross toolchain ! "
	wget -c ${CROSS_COMPILER_LINK} -O ${CROSS_COMPILER_ARCHIVE}
	echo "Extracting the toolchain "
	mkdir -pv ${HOME}/Toolchain
	tar -xvf ${CROSS_COMPILER_ARCHIVE} -C ${HOME}/Toolchain/
	}
}


download_GCC_ToolChain
