 <?php
 /* Enunt: Clientul trimite serverului un sir de numere. Serverul le primeste, le afiseaza pe ecran si trimite clientului suma lor.
	
 Rulare in doua terminale diferite:
	php server.php
	php client.php
 */
 $s = socket_create(AF_INET, SOCK_DGRAM, 0);
 $nr1=readline("Dati lungimea: ");
 socket_sendto($s, $nr1, 100, 0, "127.0.0.1", 1234);
 echo "Trimit la server lungimea ".$nr1."\n";
 
 for($i=0;$i<$nr1;$i++)
 {
 $nr2=readline("Dati un numar: ");
 socket_sendto($s, $nr2, 100, 0, "127.0.0.1", 1234);
 echo "Trimit la server sir[$i]= ".$nr2."\n";
 }
 socket_recvfrom($s,$rez,100,0,$from,$port);
 echo "Am primit de la server: ".$rez."\n";
 socket_close($s);
?>