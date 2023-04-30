: '
Place food_no_101label_words_list.txt, food_food101caption_list.txt, 
food_nocaption_list.txt, non_food_list.txt in the folder that has the 
Yelp photos, cd to this folder and run the cmds below to copy (or move) 
images to separate folders.

This script works on Mac in Terminal. If use Linux, may try using 'cat non_food_list.txt | xargs -I % echo cp % non_food' instead.
'

mkdir food_no_101label_words
mkdir food_food101caption
mkdir food_nocaption
mkdir non_food

## on mac os
cat food_no_101label_words_list.txt | xargs -J % cp % food_no_101label_words # you may replace 'cp' by 'mv'
cat food_food101caption_list.txt | xargs -J % cp % food_food101caption # you may replace 'cp' by 'mv'
cat food_nocaption_list.txt | xargs -J % cp % food_nocaption # you may replace 'cp' by 'mv'
cat non_food_list.txt | xargs -J % cp % non_food # you may replace 'cp' by 'mv'

## on linux
for file in $(<food_no_101label_words_list.txt); do cp -- "$file" food_no_101label_words; done
for file in $(<food_food101caption_list.txt); do cp -- "$file" food_food101caption; done
for file in $(<food_nocaption_list.txt); do cp -- "$file" food_nocaption; done
for file in $(<non_food_list.txt); do cp -- "$file" non_food; done
