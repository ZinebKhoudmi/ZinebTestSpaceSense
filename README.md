# Step 1:building Docker Image 
```
docker build -t dockersegmentation .
```
# Step 2:star Docker Container
```
docker run --names segmentationdocker -d dockersegmentation
```
# Step 3: Container IP adress
```
container_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mycontainer)
echo "Container IP Address: $container_ip"
```
# Step 4: Send Request

1. Open Postman.

2. Create a new request.

3. Set the request type to POST.

4. Enter the following URL :
Replace it with what you got in step 3
```
https://$container_ip/segmentation/

```
5. Add a key-value pair:

Key: file

Value: Select the file option to upload your image file. Then click on Send