#trap.sh
trap "exit 0" 64
while date
do
  echo 1
done
exit 0

#./trap.sh && echo $?
#kill -64 <pid>
