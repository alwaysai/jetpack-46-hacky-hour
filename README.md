# jetpack-46-hacky-hour
This repo is designed as a companion to go with alwaysAIs March 30th Hacky Hour.  The Hacky Hour is about NVIDIA’s Jetpack 4.6 capabilites and how to use them with EdgeIQ, alwaysAI Computer Vision framework.  The repo provides a python script, TensorRT models and a DLA (Deep Learning Accelerator) monitoring tool that you can use in your projects.  The csi-camera script can be used as a starter application to jump start your application project.  It is a object detection script that processes a video stream from IMX477 camera https://www.arducam.com/arducam-imx477-jetson-cameras/ and use a CUDA backend to perform inferencing. 

## Repo Programs
| Folder                     	| Description                                                                                              	|
|----------------------------	|----------------------------------------------------------------------------------------------------------	|
| csi-camera          | Program uses CSI IMX477 camera to perform object detection.|
| models 	            | TensoRT models to use with your project|
| tools               | Bash script used to monitor DLA usage|

## Setup

To run the csi-camera app requires an alwaysAI account. Head to the [Sign up page](https://www.alwaysai.co/dashboard) if you don't have an account yet. Follow the instructions to install the alwaysAI tools on your development machine.

Next, create an empty project to be used with this app. When you clone this repo, you can run `aai app configure` within the repo directory and your new project will appear in the list.

## Usage

Once the alwaysAI tools are installed on your development machine (or edge device if developing directly on it) you can run the following CLI commands:

To set up the target device & install path

```
aai app configure
```

To install the app to your target

```
aai app install
```

To start the app

```
aai app start
