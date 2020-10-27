if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -w "maybe" .hidden.txt | wc -l) -gt 0 ]&&[ $(grep -w "no" .hidden.txt | wc -l) -gt 0 ]&&[ $(grep -w "yes" .hidden.txt | wc -l) -gt 0 ]||
[ $(grep -w "maybe no yes" .hidden.txt| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






