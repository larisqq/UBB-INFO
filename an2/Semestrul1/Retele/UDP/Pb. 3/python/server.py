#Enunt: Clientul trimite serverului un sir de numere. Serverul le primeste, le afiseaza pe ecran si trimite clientului suma lor.
#
#Rulare in doua terminale diferite:
#	python server.py
#	python client.py
import socket

UDP_IP = "127.0.0.1"
UDP_PORT = 1234

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

while True:
	nr1, addr = sock.recvfrom(1024) 
	print "Am primit de la client lungimea: ", nr1
	NR = 0
	for x in xrange(0, int(nr1)):
		nr2, addr = sock.recvfrom(1024) 
		print "Am primit de la client numarul: ", nr2
		NR = str(int(NR)+int(nr2))
	print "Trimit spre client: ",NR
	sock.sendto(NR, addr)