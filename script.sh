#!/bin/sh

CURRENT_PATH=$(pwd)
IMAGES_PATH="$CURRENT_PATH/OS_LAB2_IMG"

source ./repo.sh

# a. Kiểm tra trong thư mục người dùng, nếu thấy thư mục PNG và JPG chưa tồn tại thì tạo 02 thư mục này.
if [ ! -d ~/PNG ]; then
    mkdir ~/PNG
fi

if [ ! -d ~/JPG ]; then
    mkdir ~/JPG
fi

# b. Di chuyển tất cả file PNG trong thư mục OS_LAB2_IMG ở trên vào thư mục PNG. Xuất ra màn hình số lượng ảnh PNG.
echo "Number of ~/PNG images: $(ls ~/PNG | wc -l)"

if [ -d "$IMAGES_PATH" ]; then
    for file in "$IMAGES_PATH"/*.png; do
        mv "$file" ~/PNG
    done
    echo "Number of ~/PNG images: $(ls ~/PNG | wc -l)"
fi

# c. Di chuyển tất cả file JPG trong thư mục OS_LAB2_IMG ở trên vào thư mục JPG. Xuất ra màn hình số lượng ảnh JPG.
echo "Number of ~/JPG images: $(ls ~/JPG | wc -l)"

if [ -d "$IMAGES_PATH" ]; then
    for file in "$IMAGES_PATH"/*.jpg; do
        mv "$file" ~/JPG
    done
    echo "Number of ~/JPG images: $(ls ~/JPG | wc -l)"
fi
