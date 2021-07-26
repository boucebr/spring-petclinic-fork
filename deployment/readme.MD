# Deployment Guide

The purpose of this guide is to provide examples of how the you can leverage the [Tanzu Build Service](https://tanzu.vmware.com/build-service) as part of your CI/CD pipeline. It will use the [Spring PetClinic](https://github.com/spring-projects/spring-petclinic) application as the sample application to deploy.

The end goal will be for examples to be available for all the most common CICD solutions, as well as as the most common docker registeries.

The current available samples are:

| CD Solution | Registry |
| ----------- | ----------- |
| Azure DevOps | Harbor |

# Pre-requisites 

This guide assumes all of the following are in available for the example pipelines:

1.  A Kubernetes Cluster
2.  Tanzu Build Service installed per the [installation docs](https://docs.pivotal.io/build-service/1-2/installing.html)
3.  A Docker image registry capable of making a webhook call when a container is pushed

# Pipeline Workflow

The examples will follow the [feature branch workflow](https://docs.pivotal.io/build-service/1-2/tbs-in-ci.html) that is demonstrated in the [TBS documents](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow).  

(https://docs.pivotal.io/build-service/1-2/images/ci_flow_full.png)

This workflow utilizies a single new branch (feature branch) that is merged in to the master branch via an organizations typical merge workflow.   The examples then pick up at this point and have two pipelines:

# CD Pipeline #1



# Prep work

In order for the deployment to work - you'll need to create the image on Tanzu build service and point it to a previous commit sha:

```
kp image create spring-petclinic --tag harbor-demo.ryanbaker.io/demo-tbs/spring-petclinic --git https://github.com/ryan-a-baker/spring-petclinic.git --git-revision a7e9488646cda0ae823be0a080743bef02c5f6e1
```