#!/bin/bash
# diy-part1.sh

echo "=========================================="
echo "Applying FudanMicro SPI NAND patch..."
echo "=========================================="

# 复制补丁到内核 patches 目录
PATCH_FILE="$GITHUB_WORKSPACE/scripts/0001-mtd-spinand-Add-FudanMicro-FM25G02B-and-other-FMSH-chips.patch"
TARGET_DIR="openwrt/target/linux/airoha/patches-6.12"

if [ -f "$PATCH_FILE" ]; then
    cp -f "$PATCH_FILE" "$TARGET_DIR/"
    echo "✅ Patch copied to $TARGET_DIR"
else
    echo "⚠️ Patch not found: $PATCH_FILE"
fi

echo "=========================================="
