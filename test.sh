cp ./config.ini.tmp ./config.ini
filename=$1
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
echo $cmd0
echo $filename
mv ./logs/$cmd0 ./logs/sub6/$filename



sed -e 's/frequency: 3500000000/frequency: 26000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 400000000/g' > ./config.ini ; cat config.ini
./bin/main
echo $cmd0
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/mmwave/$filename


sed -e 's/frequency: 3500000000/frequency: 50000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 400000000/g' > ./config.ini ; cat config.ini
./bin/main
echo $cmd0
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/50GHz/$filename

sed -e 's/frequency: 3500000000/frequency: 100000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 2000000000/g' > ./config.ini ; cat config.ini
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/100GHz/$filename

sed -e 's/frequency: 3500000000/frequency: 150000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 2000000000/g' > ./config.ini ; cat config.ini
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/150GHz/$filename

sed -e 's/frequency: 3500000000/frequency: 200000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 2000000000/g' > ./config.ini ; cat config.ini
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/200GHz/$filename

sed -e 's/frequency: 3500000000/frequency: 250000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 2000000000/g' > ./config.ini ; cat config.ini
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/250GHz/$filename

sed -e 's/frequency: 3500000000/frequency: 300000000000/g' ./config.ini.tmp -e 's/bandwidth: 100000000/bandwidth: 2000000000/g' > ./config.ini ; cat config.ini
./bin/main
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
mv ./logs/$cmd0 ./logs/300GHz/$filename


