TOTAL=0
SUCCESS=0

echo
echo "no params"
./start.sh
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 0 ]; then
  echo  SUCCESS. expeted 0 actual $ACTUAL
   let "SUCCESS = $SUCCESS + 1"
else
  echo Fail. expeted 0 actual $ACTUAL
fi

echo
echo "with params"
./start.sh param
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 1 ]; then
  echo  SUCCESS. expeted 1 actual $ACTUAL
  let "SUCCESS = $SUCCESS + 1"
else
  echo Fail. expeted 0 actual $ACTUAL
fi


echo
echo "with param 2"
./start.sh param pam
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 2 ]; then
  echo  SUCCESS. expeted 2 actual $ACTUAL
   let "SUCCESS = $SUCCESS + 1"
else
  echo Fail. expeted 0 actual $ACTUAL
fi


echo
echo "with param 3"
./start.sh param pam pam
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 3 ]; then
  echo  SUCCESS. expeted 3 actual $ACTUAL
   let "SUCCESS = $SUCCESS + 1"
else
  echo Fail. expeted 0 actual $ACTUAL
fi

echo
echo Results:
echo $SUCCESS success tes ts out of $TOTAL

echo
if [ $TOTAL -eq $SUCCESS ]; then
 echo all tests work
 exit 0
 else
 echo not work
 exit 1
 fi
