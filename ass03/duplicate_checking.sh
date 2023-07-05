#!/bin/bash
threshold=$1
dir_path=./

# 获取目录中的所有文件列表
file_list=$(find "$dir_path" -type f ! -name "duplicate_checking.sh")

# 遍历文件列表，并进行比较
for file1 in $file_list; do
  for file2 in $file_list; do
    if [ "$file1" \< "$file2" ]; then
      # 比较文件的区别行数
      diff_lines=$(diff -U 0 "$file1" "$file2" | grep -E '^\+' | grep -vc '+++\|\\')
      total_lines_file1=$(wc -l < "$file1")
      total_lines_file2=$(wc -l < "$file2")
#       echo "all: $file1 $file2 $diff_lines $total_lines_file1 $total_lines_file2"
      diff_lines_abs=$((total_lines_file1 - total_lines_file2))
      diff_lines_abs=${diff_lines_abs#-}  # 取绝对值
      diff_lines=$((diff_lines + diff_lines_abs))
      if [ "$diff_lines" -lt "$threshold" ]; then
        # 区别行数小于阈值，记录文件名
        echo "$file1  $file2  $diff_lines  $total_lines_file1  $total_lines_file2"
      fi
    fi
  done
done
