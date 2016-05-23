#!/bin/bash
echo "Servidor Web 1:" >> ServidorWeb.txt
for((i=0; i<6; i++));
do
	printf "\nEjecucion $i:\n"
	ab -n 1000 -c 10 http://192.168.1.17/test.php >> ServidorWeb.txt
done

echo "Servidor NGINX:" >> ServidorNginx.txt
for((i=0; i<6; i++))
do
	printf "\nEjecucion $i:\n"
	ab -n 1000 -c 10 http://192.168.1.21/test.php >> ServidorNginx.txt
done

echo "Servidor HaProxy:" >> ServidorHaproxy.txt
for((i=0; i<6; i++))
do
	printf "\nEjecucion $i:\n"
	ab -n 1000 -c 10 http://192.168.1.22/test.php >> ServidorHaproxy.txt
done
