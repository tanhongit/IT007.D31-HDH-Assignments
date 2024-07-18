#!/bin/sh

# a. Yêu cầu người dùng nhập vào họ và tên (không dấu), tạo ra thư mục có tên tương ứng với thông tin người dùng vừa nhập
echo "Enter your full name (no accent):"
read -r name

if [ ! -d ./"$name" ]; then
    mkdir ./"$name"
fi

# b. Đọc file text monhoc.txt ở trên, ở trong thư mục vừa tạo ở câu a, với mỗi môn học, tạo ra một thư mục có tên tương ứng với mã môn đó

while IFS= read -r line; do
    subject=$(echo "$line" | cut -d' ' -f1)

    if [ ! -d ./"$name"/"$subject" ]; then
        mkdir ./"$name"/"$subject"
        echo "Created directory $name/$subject"
    fi
done <monhoc.txt
