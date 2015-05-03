# Ubuntu Trusty Supervisord

Ubuntu Vivid/Trusty images with sshd, supervisord and locale en_US.UTF-8.

## Overview

Ubuntu Vivid/Trusty images with :  

+ sshd
+ supervisord
+ locale en_US.UTF-8
+ language-pack-en language-pack-en-base

built on the top of formal Ubuntu images.

## TAGS

+ latest - vivid
+ vivid
+ trusty

## Pull Image

```
$ sudo docker pull classcat/ubuntu-supervisord
```

## Usage

```
$ sudo docker run -d --name (container name) -p 2022:22 \  
  -e password=(root password) classcat/ubuntu-supservisord
```

### example

```
$ sudo docker run -d --name myubuntu -p 2022:22 \  
  -e password=mypassword classcat/ubuntu-supervisord

$ sudo docker run -d --name myubuntu -p 2022:22 \  
  -e password=mypassword classcat/ubuntu-supervisord:trusty
```
