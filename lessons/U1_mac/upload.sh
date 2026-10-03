#!/bin/sh
# 用法: sh upload.sh 1        只传 Unit 1
#       sh upload.sh 1 2 3    传多个单元
#       sh upload.sh          传全部（0）
# 已在 release 里且大小相同的文件自动跳过
set -e
TAG=lessons-U1_mac
gh release view $TAG >/dev/null 2>&1 || gh release create $TAG --title "U1_mac 音频" --notes ""
[ $# -eq 0 ] && set -- 0
HAVE=$(gh release view $TAG --json assets --jq '.assets[] | "\(.name) \(.size)"')
for U in "$@"; do
  case "$U" in
    0) FILES='"/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_01.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_02.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_03.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_04.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_05.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_06.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_07.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_08.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_09.m4a" "/Users/huazhuang/Documents/app20260906/vidovocab/lessons/U1_mac/lesson_10.m4a"' ;;
    *) echo "没有 Unit $U"; exit 1 ;;
  esac
  echo "== Unit $U"
  eval set -- $FILES
  N=$#; I=0
  for F in "$@"; do
    I=$((I+1))
    SZ=$(du -h "$F" | cut -f1)
    printf '[%d/%d] %s (%s) ... ' $I $N "$(basename "$F")" "$SZ"
    if echo "$HAVE" | grep -qx "$(basename "$F") $(stat -f%z "$F" 2>/dev/null || stat -c%s "$F")"; then
      echo "已有，跳过"; continue
    fi
    T0=$(date +%s)
    gh release upload $TAG --clobber "$F" >/dev/null
    echo "$(( $(date +%s) - T0 ))s"
  done
done
