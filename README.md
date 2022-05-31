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
<img width="1440" alt="Screenshot 2022-05-18 at 9 35 07 AM" src="https://user-images.githubusercontent.com/58558866/171108721-52375d67-02ea-4516-84bc-ec02bd4de8da.png">
<img width="1440" alt="Screenshot 2022-05-18 at 9 35 19 AM" src="https://user-images.githubusercontent.com/58558866/171108765-241f3b95-c35a-41f3-a0e6-0b136740db06.png">
<img width="1440" alt="Screenshot 2022-05-18 at 9 35 34 AM" src="https://user-images.githubusercontent.com/58558866/171108803-4b13f14e-6ede-4744-a8f4-fc33c8b796ea.png">
<img width="1440" alt="Screenshot 2022-05-18 at 9 35 47 AM" src="https://user-images.githubusercontent.com/58558866/171108821-a6b391fa-98df-46a7-99a6-041c05e7e89d.png">
<img width="1440" alt="Screenshot 2022-05-18 at 9 42 20 AM" src="https://user-images.githubusercontent.com/58558866/171108849-a23d661b-535f-42d8-a004-d24cf15fe327.png">
