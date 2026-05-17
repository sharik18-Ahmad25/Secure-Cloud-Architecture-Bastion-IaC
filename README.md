# 🔐 Cloud Infrastructure Evolution: Traditional Jump Server vs Azure Bastion PaaS

![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)
![Microsoft Azure](https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Architecture](https://img.shields.io/badge/Architecture-Legacy%20vs%20Modern-critical?style=for-the-badge)
![Security](https://img.shields.io/badge/Security-Zero%20Trust-8E44AD?style=for-the-badge)
![Azure Bastion](https://img.shields.io/badge/PaaS-Azure%20Bastion-0052CC?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Jump Server](https://img.shields.io/badge/Legacy-Jump%20Server-lightgrey?style=for-the-badge)
![Networking](https://img.shields.io/badge/Networking-VNet%20%7C%20Subnet-0A66C2?style=for-the-badge&logo=azuredevops&logoColor=white)
![Linux](https://img.shields.io/badge/Compute-Linux%20VM-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Security Model](https://img.shields.io/badge/Security%20Model-Attack%20Surface%20Reduced-success?style=for-the-badge)
![Project Type](https://img.shields.io/badge/Project-Real--World%20Architecture-blue?style=for-the-badge)

---

## 📌 Project Overview

Welcome to the **Secure Cloud Architecture** repository.

This project demonstrates the **evolution of infrastructure security in Microsoft Azure** using Terraform (Infrastructure as Code). Instead of treating infrastructure as a static setup, this repository highlights the transition from **legacy, risk-prone architectures** to **modern, production-grade secure designs**.

The goal is to clearly showcase:
- How traditional access methods increase attack surface
- How modern PaaS solutions reduce risk using Zero Trust principles

---

## 🧠 Core Concepts Explained

### 🔴 1. Traditional Jump Server (Legacy Approach)

A **Jump Server** (Jumpbox / Bastion VM) is a publicly accessible virtual machine used as an entry point into a private network.

**How it works:**
- A VM is deployed with a **Public IP**
- Ports like **SSH (22)** or **RDP (3389)** are exposed to the internet
- Admin connects → then accesses private VMs internally

**Key Problem:**
> This creates a **public attack surface**, making it vulnerable to brute-force attacks and exploits.

---

### 🟢 2. Azure Bastion (Modern PaaS Approach)

**Azure Bastion** is a fully managed **Platform-as-a-Service (PaaS)** that provides secure VM access **without exposing any public IPs**.

**How it works:**
- Deployed inside a dedicated subnet (`AzureBastionSubnet`)
- Uses **HTTPS (Port 443)** via Azure Portal
- Provides **browser-based SSH/RDP access**

**Key Advantage:**
> No public exposure + no infrastructure management = **high security + low operational overhead**

---

## 📂 Repository Structure

This project is intentionally divided to reflect **real-world architectural evolution**:

### 📁 `01-Legacy-JumpServer-Architecture`

- Traditional public-facing Jump Server setup  
- Demonstrates:
  - Security risks  
  - Manual management overhead  
  - Older industry practices  

---

### 📁 `02-Modern-AzureBastion-PaaS`

- Fully secure architecture using Azure Bastion  
- Highlights:
  - Zero Public IP design  
  - PaaS-based security  
  - Terraform-driven automation  

---

## ⚖️ Architectural Comparison

| Feature | 🔴 Jump Server (Legacy) | 🟢 Azure Bastion (Modern) |
|--------|------------------------|--------------------------|
| **Public Exposure** | Required (High Risk) | None (Fully Private) |
| **Ports** | 22 / 3389 open | Only HTTPS (443) |
| **Maintenance** | High (Manual patching) | Zero (Managed by Azure) |
| **Security Model** | Perimeter-based | Zero Trust aligned |
| **Access Method** | SSH / RDP client | Browser-based |
| **Scalability** | Manual | Native & scalable |

---

## 🔐 Key Security Insights

### 🚨 Risk in Legacy Architecture

The Jump Server acts as a **single point of failure**.  
If compromised, attackers can move laterally across the entire network.

---

### ✅ Strength of Azure Bastion

Azure Bastion:
- Eliminates public endpoints  
- Reduces attack surface  
- Provides secure access over TLS  
- Requires no agent or client setup  

---

## 🚀 How to Explore

- 🔍 Explore legacy setup:  

  👉 `01-Legacy-JumpServer-Architecture`

- 🔐 Explore modern secure setup:  

  👉 `02-Modern-AzureBastion-PaaS`

---

## 🎯 Key Takeaways

- ✔ Transition from legacy → modern architecture  
- ✔ Implementation of Zero Trust security principles  
- ✔ Hands-on Terraform-based infrastructure deployment  
- ✔ Real-world production-grade cloud security design  

---

## ⚡ Author

Built with 💙 using Terraform & Microsoft Azure