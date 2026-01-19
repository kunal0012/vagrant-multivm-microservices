
# Vagrant Multi-VM Microservices Application 

## 📌 Problem Statement
Setting up a multi-tier application manually across multiple servers is time-consuming, error-prone, and difficult to reproduce. This project demonstrates how a complete multi-service application stack can be automated using **Vagrant** and **shell scripting**, following real-world infrastructure patterns.

---

## 🏗️ Architecture Overview
The application is composed of multiple services, each running on a dedicated virtual machine:

- **Nginx** – Reverse proxy / web server
- **Apache Tomcat** – Application server
- **MySQL** – Database service
- **Memcached** – Caching layer
- **RabbitMQ** – Message broker

All services communicate over a **private network**, simulating a real production-style multi-tier architecture.

---

## 🧰 Tools & Technologies
- Vagrant
- VirtualBox
- Linux (Ubuntu / CentOS)
- Bash (Shell scripting)
- Nginx
- Apache Tomcat
- MySQL
- Memcached
- RabbitMQ

---

## ⚙️ Provisioning & Automation
- A single **Vagrantfile** is used to define and manage multiple virtual machines.
- Each VM is provisioned using dedicated **shell scripts** for service installation and configuration.
- Common configurations are reused to avoid duplication.
- Nginx is configured as a **reverse proxy** to route traffic to the application server.
- Services are automatically started during provisioning.

---

## 🌐 Networking Details
- Private IP addressing is used for inter-service communication.
- Required ports are explicitly configured for each service.
- Nginx acts as the entry point, forwarding requests to the Tomcat application server.

---

## 🚀 How to Run the Project
1. Install **Vagrant** and **VirtualBox**
2. Clone this repository:
   ```bash
   git clone <repo-url>
   cd vagrant-multivm-microservices
3. Run command "vagrant up" in your terminal (I used Git Bash) it will start all the Virtual Machines.
4. Use web01 VM IP or VM name (http://web01) in your local browser and it should work!.

## What I Learned

1. Designing multi-tier, multi-VM architectures
2. Automating Linux server provisioning using shell scripts
3. Configuring Nginx as a reverse proxy
4. Managing service dependencies and networking
5. Understanding the limitations of VM-based infrastructure
