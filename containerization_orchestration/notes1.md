## What are Containers?

Containers package code and dependencies into isolated, self-contained units that run consistently across different devices and operating systems. This eliminates 'works on my machine' problems and makes it easy to deploy applications reliably from development to production."

### Why Containers
- Isoloated environment, without dependency issues from host O.S
- Lightweight compared to VM which has its own O.S
- Shares Kernel with host O.S and allows multiple containers to run
- *Fault isolation* : Failure of one, does not lead to other
- Resource limiting for each containers

## Difference between Virtual Machines and containers

### Virtual Machines

Before Containers, VM were popular to run applications on production. The VM  package copy of application O.S. This image budled O.S is known as **Guest O.S**

VM can also allow to run multiple applications on single host, but due its heavy weight bcz of copy of O.S resources are wasted.

Between the guest O.S and the host O.S sits the **Hypervisor**

The Hypervisor helps facilitating access between guest O.S and the host O.S hardware.

!["VM image"](https://linkedin.github.io/school-of-sre/level102/containerization_and_orchestration/images/VM.png "VM image")

### Containers

Containers are preferred over VM bcz of its performance benefits and lightweight.
There is no Hypervisor here and no guest O.S.

Container share the same Kernel as the host O.S

Container engine is between contained application and host O.S. 

The container engine handles the lifecyle  of container on the host O.S

!["Container image"](https://linkedin.github.io/school-of-sre/level102/containerization_and_orchestration/images/Containers.png)


## How are Containers Implemented

**C-groups** and **kernal namespaces** are the Linux features which helps run containers in isolation.

The containers have limited *visibility* and *quantity of resources* and *system calls* it can use

- *visiblity* is implemented using **namespaces**
- *resources* are implmented using **cgroups**

### Namespaces
Visibility of processes within itself, done using linux namespaces.

These namespaces don't allow accessing process outside of the container

List of namespaces in linux
- Mount
- PID
- Network
- User
- Cgroup
- UTS


### Cgroups
Set of processes whose usage can be metered and monitored. The resources can be memory, disk, I/O, CPU etc.

Sets of resource controllers and their functions
- blkio : The subsystem sets limits on I/O from to and fro access and also  blocking physcial drives access.
- cpu   :  
- cupset : Subsystem assigns individiual CPU and memory nodes
- freezer : pauses or resumes processes in cgroup
- memory  : sets limit memory use by process in cgroup and generates report on memory resources 
- devices : allows or denies access to devices by processes in cgroup

## Container Engine
Container engines ease the process of creating and managing containers in a host machine

Container engines in the market: Docker, RKT, LXC (one of the first container engines) 

### Container image
Container image is packaged dependencies of the application which is lightweight and portable version to run

This container image is fetched/pulled which can be run on isolated environment to get the appliction up and run within the container.





