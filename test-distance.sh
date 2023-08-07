cp ./config.ini.tmp ./config.ini
cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
filename=$1


#sub6
for i in $(seq 20 20 200); do
  sed -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini; cat config.ini;
  cat config.ini;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/sub6/distance-$i
done

#mmwave
for i in $(seq 20 20 200); do
   sed -e 's/frequency: 3500000000/frequency: 26000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 400000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  cat config.ini;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/mmwave/distance-$i
done


#50GHz
for i in $(seq 20 20 200); do
   sed -e 's/frequency: 3500000000/frequency: 50000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  cat config.ini;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/50GHz/distance-$i
done

#100GHz
for i in $(seq 20 20 200); do
   sed -e 's/frequency: 3500000000/frequency: 100000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/100GHz/distance-$i
done

#150GHz
for i in $(seq 20 20 200); do
   sed -e 's/frequency: 3500000000/frequency: 150000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/150GHz/distance-$i
done


#200GHz
for i in $(seq 20 20 200); do
  sed -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini; cat config.ini;


   sed -e 's/frequency: 3500000000/frequency: 200000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/200GHz/distance-$i
done

#250GHz
for i in $(seq 20 20 200); do
   sed -e 's/frequency: 3500000000/frequency: 250000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  cat config.ini;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/250GHz/distance-$i
done


#300GHz
for i in $(seq 20 20 200); do

   sed -e 's/frequency: 3500000000/frequency: 300000000000/g'  -e  's/bandwidth: 100000000/bandwidth: 2000000000/g' -e "s/pos_x: 20/pos_x: $i/g" ./config.ini.tmp > ./config.ini ;
  ./bin/main
  cmd0=`ls -lt ./logs	|grep -v total |head -1 |awk '{print $9}'`
  mv  ./logs/$cmd0 ./logs/300GHz/distance-$i
done

