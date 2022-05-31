This Project is a simple Hello-World Spring Java Application, which is 
built using Docker, and deployed with Docker on an Ubuntu VM. 

1.The pipeline automatically builds and creates a Docker image using the 
Dockerfile and pushes the image to GitLab Docker container registry. ​
​
You can access Docker Registry from the left-side menu – Packages > Container Registry​
 
2.The Docker-image that is pushed to the above mentioned container registry should 
be used for deployment using Docker, on to a Ubuntu VM. ​
​
Any changes made in the project, should automatically trigger a pipeline and 
deploy the code on to the Ubuntu VM, which has a NGINX web server to serve the Java application.

By default, as per the Dockerfile configuration, the container is served on Port 
8080.
Port Forwarding is done using the NGINX Webserver to ensure 
the application is accessible on Port 80. ​
​
