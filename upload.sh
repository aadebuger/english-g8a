#!/bin/sh
# 用法: sh upload.sh 1        只传 Unit 1
#       sh upload.sh 1 2 3    传多个单元
#       sh upload.sh          传全部（1 2 3 4 5 6）
set -e
TAG=g8a-audio
gh release view $TAG >/dev/null 2>&1 || gh release create $TAG --title "八年级上 英语 音频" --notes ""
[ $# -eq 0 ] && set -- 1 2 3 4 5 6
for U in "$@"; do
  case "$U" in
    1) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/001_U1_P1_Viewing_Facts_about.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/002_U1_P2_Speaking_Water_in.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/003_U1_P3_Reading_The_land_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/004_U1_P4_Reading_The_land_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/005_U1_P5_Grammar_Adverbial.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/006_U1_P6_Writing_Water_protection.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/007_U1_P7_Discovery_New_ways_to.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/008_U1_P8_Revision.m4a"' ;;
    2) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/009_U2_P1_Viewing_Digital_products.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/010_U2_P2_Speaking_Complaints.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/011_U2_P3_Reading_Digital.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/012_U2_P4_Reading_Digital.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/013_U2_P5_Grammar_Adverbial.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/014_U2_P6_Writing_My_views_on.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/015_U2_P7_Discovery_Different.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/016_U2_P8_Revision.m4a"' ;;
    3) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/017_U3_P1_Viewing_An_inborn.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/018_U3_P2_Speaking_Keeping_your.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/019_U3_P3_Reading_Benefits_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/020_U3_P4_Reading_Benefits_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/021_U3_P5_Grammar_Infinitives.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/022_U3_P6_Writing_A_healthy_dose.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/023_U3_P7_Discovery_Curious_minds.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/024_U3_P8_Revision.m4a"' ;;
    4) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/029_U4_P1_Viewing_Cities_then_and.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/030_U4_P2_Speaking_Old_things.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/031_U4_P3_Reading_A_page_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/032_U4_P4_Reading_A_page_of.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/033_U4_P5_Grammar_Adverbial.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/034_U4_P6_Writing_Changes_in_our.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/035_U4_P7_Discovery_New_for_old.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/036_U4_P8_Revision.m4a"' ;;
    5) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/037_U5_P1_Viewing_Great_teams.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/038_U5_P2_Speaking_Challenges_in.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/039_U5_P3_Reading_Team_spirit_1.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/040_U5_P4_Reading_Team_spirit_2.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/041_U5_P5_Grammar_Adverbial.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/042_U5_P6_Writing_My_teamwork.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/043_U5_P7_Discovery_Teamwork_in.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/044_U5_P8_Revision.m4a"' ;;
    6) FILES='"/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/045_U6_P1_Viewing_Future.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/046_U6_P2_Speaking_Future_travel.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/047_U6_P3_Reading_Future_living_1.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/048_U6_P4_Reading_Future_living_2.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/049_U6_P5_Grammar_Adverbial.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/050_U6_P6_Writing_My_view_of_the.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/051_U6_P7_Discovery_The_future_as.m4a" "/Users/huazhuang/Documents/esp32202609/courses/八年级上_英语/052_U6_P8_Revision.m4a"' ;;
    *) echo "没有 Unit $U"; exit 1 ;;
  esac
  echo "== Unit $U"
  eval set -- $FILES
  N=$#; I=0
  for F in "$@"; do
    I=$((I+1))
    SZ=$(du -h "$F" | cut -f1)
    printf '[%d/%d] %s (%s) ... ' $I $N "$(basename "$F")" "$SZ"
    T0=$(date +%s)
    gh release upload $TAG --clobber "$F" >/dev/null
    echo "$(( $(date +%s) - T0 ))s"
  done
done
