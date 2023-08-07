#!/usr/bin/env bash
testname=$1
for i in sub6-test mmwave 100GHz 150GHz 200GHz 250GHz 300GHz; do
    mkdir ~/testdata/$i
    grep rul logs/$i/$testname/ue/ue_log_0.txt | awk '{print  $1" "$2" "$11" "$12}'> ~/testdata/$i/uedata.txt
done
