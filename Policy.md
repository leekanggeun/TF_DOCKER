# Policy
1. Crystal node(10.20.14.88 ~ 89) is manage node to throw jobs.
2. Other machine learning nodes are worker nodes.
3. Worker node can only be used for the purpose of docker container execution.
4. You should not install any library or packages on worker nodes.
5. You should not execute any heavy job on manage node.
6. You can't access directly on worker node.
7. All of your files have to be in Alexandrite NFS server(Lack of home storage)
8. Universal docker image will be updated by your request(ex. Please install the scikit-learn package on univesal docker image)
9. Due to the lack of storage space on worker node, please refrain from creating your own custom docker image on worker node.
