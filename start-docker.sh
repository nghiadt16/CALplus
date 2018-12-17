type=$1
if [ "$type" = "amazon" ]; then
    export IP=$(head -n 1 /home/ubuntu/CAL/saved_ip_amazon.txt)
    ssh -i cal.pem ubuntu@$IP 'bash -s' < setup-db.sh $IP
elif [ "$type" = "openstack" ]
then
    export IP=$(head -n 1 /home/ubuntu/CAL/saved_ip_openstack.txt)
    ssh -i 9thfloor-hlf.pem ubuntu@$IP 'bash -s' < setup-db.sh $IP
fi