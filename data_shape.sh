mkdir ~/log_data/$1
for i in 0 1 2 3 4 5 6 7 8 9
do
grep rul $1/ue/ue_log_$i.txt| awk '{print $9" "$10}'>~/log_data/$1/ue_log_$i.txt
sed -e "s/x://" -e "s/y://" ~/log_data/$1/ue_log_$i.txt >> ~/log_data/$1/no_xy_ue$i.txt
done
