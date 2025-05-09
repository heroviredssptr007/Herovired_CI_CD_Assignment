# Herovired_CI_CD_Assignment

## Step 1: Creation of Instances

Follow the steps below to create EC2 instances for your application:

- In the AWS Management Console, search for `EC2` in the search bar and click on **EC2**.
- Click on **Launch Instance**.
- Configure the instance with the following settings:
  - **Number of instances**: `1`
  - **AMI**: `Ubuntu 24.04 LTS`
  - **Instance Type**: `t3.micro`
- **Key Pair**:
  - Create a new key pair or select an existing one.
- **Network Settings**:
  - Select the appropriate **VPC**.
  - Enable **Auto-assign Public IP**.
  - Create or select a **Security Group** with the following inbound rules:
    - Port `22` (SSH)
    - Port `80` (HTTP)
    - Port `443` (HTTPS)
- **Storage**:
  - Set the storage size to `8 GB`.

Once all settings are configured, click **Launch Instance** to start the EC2 instances.

![image](https://github.com/user-attachments/assets/a9704bbf-dd14-4e72-ad4d-7f12c7558a61)

## Step 2: Installation of nginx service
```
#sudo apt update
#sudo apt install -y nginx
#sudo systemctl status nginx
```
![image](https://github.com/user-attachments/assets/7beaf86a-9631-4138-964d-1c7f80518d49)

```
#cd /var/www/html/
#sudo chown $USER:$USER .
#chmod u+w .
#git clone git@github.com:heroviredssptr007/Herovired_CI_CD_Assignment.git
```
Change the root path `/var/www/html` to `/var/www/html/Herovired_CI_CD_Assignment` and restart the nginx

```
#sudo systemctl restart nginx
```
[Link Text](http://100.25.143.57/)

![image](https://github.com/user-attachments/assets/c60cffef-d725-4cf1-ab2d-8a80db99ee77)

## Step 3: Installation of python github
```
#sudo apt install -y python3 python3-full python3-pip
#python3 -m venv venv
#source venv/bin/activate
#pip3 install PyGithub
```
![image](https://github.com/user-attachments/assets/fb11bfdf-4991-4ba2-b840-014e907cc0e6)

## Step4: Scheduling this script has to run every minute job
```
* * * * * /home/ubuntu/Herovired_CI_CD_Assignment/script.sh
```

![image](https://github.com/user-attachments/assets/bb3275cc-e5bd-4f67-9fbb-b1b46c9a31c9)











