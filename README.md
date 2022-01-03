# DevOps-Projects


**DEMO: CREATING JAVA APP,
CONTAINERIZING WITH DOCKER & DEPLOYING ON KUBERNETES CLUSTER.
**


**STEP 1:** CREATE A SPRINGBOOT JAVA MAVEN PROJECT USING SPRING INITIALIZER
⦁	Add the required dependencies e.g., SPRING WEB.
⦁	Chose the java version according to the needs. 
![image](https://user-images.githubusercontent.com/65087388/147923908-1b402237-14b6-4271-b409-9c684f8ab974.png)

 


This is a simple java application with functionality to display the string when user hits “docker-run” URL.

![image](https://user-images.githubusercontent.com/65087388/147923964-cbead2aa-3a4f-42b3-a1e8-a80f4283162b.png)

 
⦁	Run and test the application on the port where it is running. 


**STEP 2**: Getting the JAR in target folder using clean install command. PROJECT-> RUN AS -> MAVEN BUILD -> GOALS (CLEAN INSTALL)
 
![image](https://user-images.githubusercontent.com/65087388/147924062-8ba792bf-4037-4242-b7eb-3e87d87eeeec.png)


**STEP 3**: CREATE A Docker file with this name and no extension. (Docker build reads from this file the instructions and builds the images accordingly).

![image](https://user-images.githubusercontent.com/65087388/147924110-955f5528-7988-4beb-a85b-9bc0be45e4aa.png)


**STEP 4**: CREATE A DOCKER HUB REPOSITORY TO STORE YOUR IMAGE.
![image](https://user-images.githubusercontent.com/65087388/147924142-5532ada1-f2e8-4a69-bff5-cef64211e37d.png)
Sample Repository where I will store my image.


**STEP 5**: BUILDING THE DOCKER IMAGE & PUSHING IT TO THE DOCKER HUB REPOSITORY.
⦁	Go into the directory where the Dockerfile is stored.
⦁	Then build that docker file using the command.
⦁	//Docker build .
⦁	Tag the image according to the version with the command
⦁	// docker tag <image name/id> <userid>/<reponame>: <tag name>
⦁	Push the image to the repository:
⦁	docker push 05061120/helloworlddv:tagname
 
 ![image](https://user-images.githubusercontent.com/65087388/147924197-fce3fbed-bb9f-4cf9-a9a3-b53d7062b4ae.png)


The image will look like this in the repository.
 ![image](https://user-images.githubusercontent.com/65087388/147924250-42d8839a-036e-4f88-b838-8cb525c036b6.png)


 
⦁	Delete the image from your local system. To check if the docker run command pulls it from docker hub repo.
 Docker run <image name>


 The image runs successfully!
 ![image](https://user-images.githubusercontent.com/65087388/147924275-82bc1e96-881a-4df4-b46e-08b3eaeb7635.png)


Container on which this image is running.
 ![image](https://user-images.githubusercontent.com/65087388/147924296-cceedaf4-75be-4295-bd5c-fffe007f766f.png)


**STEP 6**: CREATING A DEPLOYMENT WITH YAML FILE AND DEPLOYING IT.
 
 
The yaml file which contains all the declarative details for the pod creation , replication control and port listing.
 
 ![image](https://user-images.githubusercontent.com/65087388/147924327-789c4d42-9ed9-4c7f-8f1d-a934710f513f.png)
 ![image](https://user-images.githubusercontent.com/65087388/147924378-50690660-038d-415c-a4f0-1dfef8fe9826.png)




**STEP 7**: EXPOSING THE DEPLOYMENT TO A SERVICE
The yaml file for the svc looks like this.
 ![image](https://user-images.githubusercontent.com/65087388/147924395-9a12acf5-44b8-4876-8c33-e88dfaedaa58.png)

 
Here we are using a service of type NodePort to expose the deployment on a node port which directs to another port which then sends the request to the containers port.
 ![image](https://user-images.githubusercontent.com/65087388/147924425-96d4a040-e42d-4fc7-ad0a-dfe15769d81b.png)

 
Let's try to access our application on port 32000 now with the given url.
 
 ![image](https://user-images.githubusercontent.com/65087388/147924450-d3903e36-5670-4f1b-9a40-def708675de5.png)

 


THANKS!
