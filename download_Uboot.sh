#! /bin/bash

#function to download the latest UBoot source code
#=====================================================


readonly UBOOT_GIT="https://github.com/u-boot/u-boot"
readonly UBOOT_BRANCH="v2018.01"
readonly UBOOT_DIR_PATH="${PWD}/U-Boot"


function download_Uboot()
{
	echo "Downloading the Uboot source"
	mkdir -vp ${UBOOT_DIR_PATH}
	
	(( `ls ${UBOOT_DIR_PATH} 2>/dev/null | wc -l` == 0)) && {
	
	cd ${UBOOT_DIR_PATH}
	git clone ${UBOOT_GIT}
	cd u-boot/
	git checkout ${UBOOT_BRANCH}
	
	}
	
}


download_Uboot
