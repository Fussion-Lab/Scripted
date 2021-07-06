echo "This will zip and upload"
  curl -sL https://git.io/file-transfer | sh
  touch links.txt
  echo "Download link : " >> links.txt
  ./transfer trs $1 | grep Download >> links.txt 
  cat links.txt
exit 1
