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

![image](https://github.com/user-attachments/assets/209d2a41-2d3a-472a-9f12-8ed6e516c064)




