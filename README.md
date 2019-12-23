# Create a Kubernetes cluster with Azure Kubernetes Service (AKS) using Terraform
Infra as Code Lab: learn Terraform on Azure and provision an AKS cluster in one command.

-----

## Introduction: 

**Azure Kubernetes Service (AKS)** manages your hosted Kubernetes environment.
AKS allows you to deploy and manage containerized applications without container orchestration expertise. AKS also enables you to do many common maintenance operations without taking your app offline. These operations include provisioning, upgrading, and scaling resources on demand.

Using the Azure Portal you can create a cluster with few clicks, but it usually a better idea to keep the configuration for your cluster - and basically all infra - under source control.

If you accidentally delete your cluster or decide to provision a copy in another region, you can  easily replicate the same configuration.

And if you're working as part of a team, source control gives you peace of mind. You know precisely why changes occurred and who made them.

> 💡By using **Terraform** to provision AKS Kubernetes clusters you can begin to both automate, but also now that you have captured it as a codified form, you can check it into version control and you get versioning.

-----

This guide walks you through how to the following tasks:

* Learn HCL (HashiCorp Language) and Terraform best practices by doing 
* Use Terraform and AKS to create a Kubernetes cluster
* Use the kubectl tool to test the availability of a Kubernetes cluster

-----

> If you’re using this demo, please **★Star** this repository to show your interest!

-----

## Prerequisites

* Azure subscription: Sign up for an Azure account, if you don't own one already. You will receive USD200 in free credits.

* Configure Terraform: Follow the directions in the article, Terraform and configure access to Azure

-----

You can find the full guide in the [Run IT on Cloud article](http://aymen-segni.com/index.php/2019/12/24/create-a-kubernetes-cluster-with-azure-aks-using-terraform/) 
