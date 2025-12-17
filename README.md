# Dashboard of free database space   
It's a follow-up to my previous package  [DBfree](https://github.com/r-cemper/DBfree), but not part of a contest    
### The idea   
As DeepSee in IRIS can display tables and graphics in a dashboard, I tried to fill   
in the actual DB parameters and to visualize them.    
_Short summary:_  
It is possible and an interesting exercise to misuse DepSee as a graphic viewer.  
As in the previous package, all is running from a CSP page.   
And it is all written in pure InterSystems ObjectScript       
<img src="https://github.com/r-cemper/DBdashboard/blob/master/final.jpg" width=600>  
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
git clone https://github.com/r-cemper/DBdashboard.git
```
To build and start the container run:
```
docker compose up -d && docker compose logs -f
```
To open IRIS Terminal do:
```
docker-compose exec iris iris session iris
USER>
```
To access IRIS System Management Portal  

http://localhost:42773/csp/sys/UtilHome.csp

### How to use it
In your browser simply call   

http://localhost:42773/csp/user/ZX.dbdash.cls  

### Release notes version 1.0.0   
Based on the very positive feedback I have added a new functionality.   
It is now possible to take also a snapshot from a remote system.   
The only requirement is to append an URL parameter formatted:   
#### ?SERVER=IP-Address[:SuperServerPort[:Username[:Password]]]
Example for defaults: _port=1972 user=\_SYSTEM pw=SYS_    
```
http://localhost:42773/csp/user/ZX.dbdash.cls?SERVER=192.168.0.11:11972:SuperUser:SYS
```
[Article](https://community.intersystems.com/post/dashboard-database-free-space)    

[Ideas Portal](https://ideas.intersystems.com/ideas/DPI-I-799)   
