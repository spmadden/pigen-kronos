#!/bin/bash

apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools libarchive-tools libcap2-bin grep rsync xz-utils file git curl bc \
gpg pigz xxd arch-test bmap-tools binfmt-support

IMG_NAME="raspkronos-$RELEASE-$ARCH"
PI_GEN_RELEASE='Raspberry Kronos arm64 base'
DEPLOY_COMPRESSION='none'
LOCALE_DEFAULT='en_US.UTF-8'
TARGET_HOSTNAME='raspkronos'
KEYBOARD_KEYMAP='us'
KEYBOARD_LAYOUT='English (US)'
TIMEZONE_DEFAULT='UTC'
FIRST_USER_NAME='kaal'
FIRST_USER_PASS='time'
WPA_COUNTRY='US'
ENABLE_SSH=1
PUBKEY_SSH_FIRST_USER=$(<authorized_keys)
STAGE_LIST='stage0'
USE_QEMU=0

./build.sh
