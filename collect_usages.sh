mem_free=$(free | sed -n '2'p | awk '{print $4}')
echo $mem_free `date` >> /home/sazaar/fmem.txt

mem_used=$(free | sed -n '2'p | awk '{print $3}')
echo $mem_used `date`  >> /home/sazaar/umem.txt


disk_used=$(df --total | tail -1 | awk '{print $3}')
echo $disk_used `date`  >> /home/sazaar/udisk.txt


disk_free=$(df --total | tail -1 | awk '{print $4}')
echo $disk_free `date`>> /home/sazaar/fdisk.txt



cpu_temp=$(mpstat  | tail -1 | awk '{print $4}')
cpu=`echo "$cpu_temp * 100" | bc | cut -d'.' -f1`
echo $cpu  `date` >> /home/sazaar/cpu.txt




