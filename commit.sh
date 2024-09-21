#!/bin/bash

# Kiểm tra xem người dùng có truyền vào nội dung commit hay không
if [ -z "$1" ]
then
  echo "please enter the content of the commit."
  exit 1
fi

# Kiểm tra xem người dùng có truyền vào tên nhánh hay không
if [ -z "$2" ]
then
  echo "please enter the name of the branch."
  exit 1
fi

# Lấy ngày giờ hiện tại
current_date=$(date +"%Y-%m-%d %H:%M:%S")

# Tạo thông điệp commit bao gồm cả nội dung và ngày giờ
commit_message="$current_date: $1"

# Thực hiện các lệnh git
git add .
git commit -m "$commit_message"
git push origin "$2"
