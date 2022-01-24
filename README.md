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

git clone 
