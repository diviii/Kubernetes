# Kubernetes
1.	Create a Kubernetes cluster in GCP which runs node.js service – hello world  node.js
    Step 1: 
              Create a Kubernetes cluster using google Kubernetes engine. 
               
Step2: 
              Enter the name ,location and number of pods and machine type like below      
Step3:        If you need automatically add new nodes to cluster enable autoscaling
     
Step4: 
             If you want to provide access to some API’s please select set access for each Api
  
             Cluster will be create and we can connect like below 
 
Step 5 : 
If you want to connect to the cluster you need to get the credentials of the cluster using gcloud .

gcloud container clusters get-credential my-cluster  ----region us-west3 –project kubesetup 

Here the project name is kubesetup and cluster name is my-cluster2

Now check the nodes of the cluster using 

Kubectl get nodes 

Now we can use docker file ,sample code and deployment.yaml file 

#clone the code 
git clone https://github.com/diviii/Kubernetes.git

cd kubernetes

#get credentials to google contaienr registry

gcloud auth configure-docker

#build and push  the docker image 

docker build -t gcr.io/[PROJECT_ID]/app:v1 . - build the code from the current directory and we get the hellow world image
docker push gcr.io/[PROJECT_ID]/app:v1 - pushing the image to the hellor world

Now we can create the deployment yaml and service using 

kubectl apply -f deployment.yaml --record

check the deployments using 

kubectl get deployments

check the pods using 
 kubectl get pods

2. auto scaling :

By running this command it will auto scale it 

kubectl autoscale deployment myporject --max 6 --min 1 procpu-percent 60 - here my deployment name is my project

3. CI/CD pipeline

 a. i used github to store the code
 b. by using docker i am building the images 
 c. storing the image in the container registry
 d. running it as as deployment in kubernetes
 
 4. store secretes.

Here i used secretes separtely to pass the credential to the gcr to that we can access the images . 
Please refer secrets.yml and i am applying the same in deployment.yaml

kubectl create secret generic user --from-literal=backend-username='admin'
 and assigned the secrets in the deployment.yaml
