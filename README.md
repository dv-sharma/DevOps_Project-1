# DevOps-Projects
Project explanation in -demo-helloworldapp (1).pdf file
DEMO: CREATING JAVA APP,
CONTAINERIZING WITH DOCKER & DEPLOYING ON KUBERNETES CLUSTER.

STEP 1: CREATE A SPRINGBOOT JAVA MAVEN PROJECT USING SPRING INITIALIZER
⦁	Add the required dependencies e.g., SPRING WEB.
⦁	Chose the java version according to the needs. LINK-⦁	Spring Initializr
 


This is a simple java application with functionality to display the string when user hits “docker-run” URL.
 
⦁	Run and test the application on the port where it is running. STEP 2: Getting the JAR in target folder using clean install command. PROJECT-> RUN AS -> MAVEN BUILD -> GOALS (CLEAN INSTALL)
 






STEP 3: CREATE A Docker file with this name and no extension. (Docker build reads from this file the instructions and builds the images accordingly).


 
STEP 4: CREATE A DOCKER HUB REPOSITORY TO STORE YOUR IMAGE.



 



Sample Repository where I will store my image.










STEP 5: BUILDING THE DOCKER IMAGE & PUSHING IT TO THE DOCKER HUB REPOSITORY.
⦁	Go into the directory where the Dockerfile is stored.
⦁	Then build that docker file using the command.
⦁	//Docker build .
 


⦁	Tag the image according to the version with the command
⦁	// docker tag <image name/id> <userid>/<reponame>: <tag name>
⦁	Push the image to the repository:
⦁	docker push 05061120/helloworlddv:tagname






The image will look like this in the repository.

 
⦁	Delete the image from your local system. To check if the docker run command pulls it from docker hub repo.
 Docker run <image name>










 The image runs successfully!





Container on which this image is running.






STEP 6: CREATING A DEPLOYMENT WITH YAML FILE AND DEPLOYING IT.
 
The yaml file which contains all the declarative details for the pod creation , replication control and port listing.
 


STEP 7: EXPOSING THE DEPLOYMENT TO A SERVICE
The yaml file for the svc looks like this.
 
Here we are using a service of type NodePort to expose the deployment on a node port which directs to another port which then sends the request to the containers port.
 
Let's try to access our application on port 32000 now with the given url.
 


THANKS!
