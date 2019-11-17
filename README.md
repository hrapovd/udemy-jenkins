# udemy-jenkins
Install jenkins into docker.
1. docker pull jenkins/jenkins:lts
2. docker network create mynet  # Create network to work jenkins with nginx together
3. docker run --name jenkins --network mynet -d -p 8080:8080 -p 50000:50000 -v jenkins home:/var/jenkins jenkins/jenkins:lts
4. docker logs jenkins   # Get onetime password
5. create host file /var/lib/nginx/default.conf [a relative link](default.conf)
6. docker run -d --network mynet --name nginx -v /var/lib/nginx/default.conf:/etc/nginx/conf.d/default.conf -p 80:80 nginx:stable
7. connect in your browser to http://external_host_ip
