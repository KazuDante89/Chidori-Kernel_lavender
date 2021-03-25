export ARCH=arm64
make lavender-oldcam_defconfig
cp .config arch/arm64/configs/lavender-oldcam_defconfig
git commit -am "defconfig: lavender: Regenerate" --signoff
