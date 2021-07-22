# Deployment Guide

The purpose of this guide is to provide examples of how the [Tanzu Build Service](https://tanzu.vmware.com/build-service) fits in to a variety of different CICD platforms. It will use the [Spring PetClinic](https://github.com/spring-projects/spring-petclinic) application as the sample application to deploy.

The end goal will be for examples to be available for all the most common CICD solutions, as well as as the most common docker registeries.

The current available samples are:

|| CI Solution || CD Solution || Registry ||
| Azure DevOps | Azure DevOps | Harbor |

# Pre-requesits 

Prior to walking through these examples, we assume you have the following:

1.  A Kubernetes Cluster
2.  Tanzu Build Service installed per the [installation docs](https://docs.pivotal.io/build-service/1-2/installing.html)
3.  A Docker image registry capable of making a webhook call when a container is pushed

# Prep work
 
In order for the deployment to work - you'll need to create the image on Tanzu build service and point it to a previous commit sha:

```
kp image create spring-petclinic --tag harbor-demo.ryanbaker.io/demo-tbs/spring-petclinic --git https://github.com/ryan-a-baker/spring-petclinic.git --git-revision a7e9488646cda0ae823be0a080743bef02c5f6e1
```