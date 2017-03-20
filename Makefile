all: mysql_hookandroot_lib.so mysql_hookandroot

clean:
	rm -f mysql_hookandroot_lib.so

mysql_hookandroot: mysql_hookandroot.c mysql_hookandroot_lib.c
	gcc -Wall $^ -o $@

mysql_hookandroot_lib.so: mysql_hookandroot_lib.c
	gcc -Wall -fPIC -shared -o mysql_hookandroot_lib.so mysql_hookandroot_lib.c -ldl
