echo "This will zip and upload"
  curl -sL https://git.io/file-transfer | sh
  sudo chmod -R 777 $1
  touch links.txt
  echo "MountedImage link : " >> links.txt
  file=$1
  gzip -v $file
  ./transfer trs $file.gz | grep Download >> links.txt 
  cat links.txt
exit 1
