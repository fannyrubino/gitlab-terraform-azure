# GitLab-Terraform-AKS

**Keywords:** GitLab Terraform Module AKS Azure Kubernetes Pipeline as Code

This is a recipe for the creation of an Azure Kubernetes Service with
terraform on a GitLab pipeline

## List of required elements

Azure:

- An account, can be a free one
- Azure CLI
- An Application and Service Principal

Terraform:

- Some files containing the configuration

Gitlab:

- An account, can be a free one
- Some environment variables
- A .gitlab-ci.yml file
- An API access token


## Lets get started

### Step 1: 
#### Creation of credentials for the applications we want to use to access to Azure, in this case, terraform.

We are going to use an Azure Service Principal with password authentication

**Azure CLI**

* Create a Service principal

```$az ad sp create-for-rbac --name 'http://terraform'
Creating a role assignment under the scope of "/subscriptions/e7e59088-af4e-4c84-8b9b-c184854e0a50"
{
  "appId": "XXXX-XXXX-XXXX-XXXX-XXXX",
  "displayName": "terraform",
  "name": "http://terraform",
  "password": "XXXX-XXXX-XXXX-XXXX-XXXX",
  "tenant": "XXXX-XXXX-XXXX-XXXX-XXXX"
}
```

It is of importance to copy these values, especially the password, we are going to use them later. (you can create a new password if you forget to copy the value)

### Step 2:
#### Creation of GitLab environment variables for authentication on Azure

For this part, I assume that you have a GitLab account and you have created a project in which you are going to version your files or clone this repository.

**GitLab portal**

In your GitLab project go to

> GitLab Settings -> CI / CD->Varables

Add the following environment variables and use the data from the Service Principal you created before

```
AZURE_CLIENT_ID
AZURE_CLIENT_SECRET
AZURE_SUBSCRIPTION_ID
AZURE_TENANT_ID
```

**Azure CLI**

If you want to retrieve those values you can use

for CLIENT_ID and TENANT_ID

```az ad sp list --display-name terraform | grep -e appId -e TenantId```

For TENANT_ID use

```az account list```

If you don't save the client secret you can reset it and get a new one with

```az ad sp credential reset --name```

### Step 3:

Clone this repository...

...WIP...
