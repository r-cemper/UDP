## Example of using UDP Network protocol   
UDP is a network protocol at OSI level 4, similar to TCP    
It is not as popular as TCP but especially focused on Speed     
https://en.wikipedia.org/wiki/User_Datagram_Protocol  

### Installation
Clone/git pull the repo into any local directory
```
git clone https://github.com/r-cemper/UDP.git
```
To build and start the container run:
```
docker compose up -d && docker compose logs -f
```
To open IRIS Terminal session do:    
for the first IRIS container
```
docker-compose exec iris iris session iris
USER>
```
for the second IRIS container
```
docker-compose exec iris2 iris session iris
USER>
```
To access the first IRIS System Management Portal  
http://localhost:52773/csp/sys/UtilHome.csp

To access the second IRIS System Management Portal  
http://localhost:42773/csp/sys/UtilHome.csp
### Running the Demo
The functionality is the same in both containers and has to be done     
individually for both.They just differ in their Names **iris** and **iris2**     
and in the related IP addresses. Both use port 5200 for communications.    
````
USER>do ##class(UDP.demo).ini()
````
Now both instances refer to each other 
````
USER>write ##class(UDP.demo).get()
````
now the4 first container is listening
and the second sends a hello to it
````
do ##class(UDP.demo).send()
````
For some more text than just **Hi**, I have prepared a   
LOREM IPSUM sequence with $c(3) aka ETX as terminator.     
One container starts listening
````
USER>do ##class(UDP.demo).log()
````
while the other container is sending its LOREM IPSUM    
````
USER>do ##class(UDP.demo).lorem()
````


````

