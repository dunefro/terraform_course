This demo contains two folders
1. We create a normal instance using "mykey" key with tags "type=demo-5" in demo-5-1
    a. Default security group must be used for this instance
    b. Default security group should have port 22 open from Anywhere
    c. Use file provisioner to copy the demo-5 key 
2. In demo-5-2 we create another instance with the following additional features
    a. Should use "demo-5" key to login
    b. A data source to get the public IP of the instance with tags "type=demo-5"
    b. Should create a security group which allows inbound rule from the above IPs at port 22
3. SSH into the first instance and try to SSH into second instance using the demo-5 key.