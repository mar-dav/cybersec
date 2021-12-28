## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Elk-Stack-Diagram.png](Images/Elk-Stack-Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook files may be used to install only certain pieces of it, such as Filebeat.

  - Files/metricbeat-playbook.yaml
  - Files/filebeat-playbook.yaml
  - Files/elk-docker.yaml
  
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- Load balancers protect the availability of systems by balancing incoming traffic and thus prevents servers from being overloaded with data. The main advantage jump boxes have is that it acts as our single gateway into our network and prevents our very vulnerable VMs from being exposed to the public internet.   

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the application and system logs.
- Filebeat monitors changes to system log files. 
- Metricbeat records what containers are running on a system and 

The configuration details of each machine may be found below.

| Name       | Function  | IP Address | Operating System |
|------------|-----------|------------|------------------|
| Jump Box   | Gateway   | 10.0.0.4   | Linux            |
| Web-1      | Docker VM | 10.0.0.5   | Linux            |
| Web-2      | Docker VM | 10.0.0.6   | Linux            |
| elk-docker | Kibana VM | 10.3.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 
- My own public IP address.

Machines within the network can only be accessed by my own public IP address.
- I allowed remote access to my Jump box and elk stack VM from my Public IP 

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------|
| Jump Box   | Yes                 | My Public IP         |
| Web-1      | No                  | 10.0.0.4             |
| Web-2      | No                  | 10.0.0.5             |
| elk-docker | Yes                 | My Public IP         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because we can quickly redeploy the same configuration if this machine was to become unavailable. 
 

The playbook implements the following tasks:
- Install Docker.io
- Install Pip
- Install Docker via Pip
- Download and launch an Elk stack container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance. 

[docker_ps_output.png](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- web-1: 10.0.0.4
- web-1: 10.0.0.5

We have installed the following Beats on these machines:
- Metricbeat
- Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeat allows us to see system log data from web-1 and web-2 in one place 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the yaml file to ~/elk/elk-docker.yaml.
- Update the /etc/ansible/hosts file to include an Elk group 
- Run the playbook, and navigate to http://<external ip of elk-docker>:5601 to check that the installation worked as expected.

- The Playbook is elk-docker.yaml.
- Open /etc/ansible/hosts and create a group named elk that contains the ip of your target elk VM. This will ensure only your new VM will be the target of our new deployment. 
- Run ansible-playbook elk-docker.yaml to deploy the playbook to our VM.
- Navigate to http://<external ip of elk-docker>:5601 to see our Kibana deployment.


