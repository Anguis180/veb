TOTAL=0
SXCESS=0

echo
echo "no params"
./start.sh
ACTUAL=$?
echo ecpected 0 actual $ACTUAL


echo
echo "with params"
./start.sh param
ACTUAL=$?
echo ecpected 1 actual $ACTUAL

echo
echo "with param 2"
./start.sh param pam
ACTUAL=$?
echo ecpected 2 actual $ACTUAL

echo
echo "with param 3"
./start.sh param pam pam
ACTUAL=$?
echo ecpected 3 actual $ACTUAL
