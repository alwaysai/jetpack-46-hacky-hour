# jetpack-46-hacky-hour
This repo is designed as a companion to go with alwaysAIs March 30th 2022 Hacky Hour.  This Hacky Hour is about NVIDIA’s Jetpack 4.6 capabilites and how to use them with EdgeIQ, alwaysAI Computer Vision framework.  The repo provides a python script, TensorRT models and a DLA (Deep Learning Accelerator) monitoring tool that you can use in your projects.  The csi-camera script can be used as a starter application to jump start your computer vision application project.  It is a object detection script that processes a video stream from IMX477 camera https://www.arducam.com/arducam-imx477-jetson-cameras/ and use a CUDA backend to perform inferencing.  The machine learning model that is being used by the script is ssd_mobilenet_v1_coco_2018_01_28 a Tensorflow model created by Google using the coco dataset.  The model can be found in alwaysAI Model Catalog (https://console.alwaysai.co/model-catalog?model=alwaysai/ssd_mobilenet_v1_coco_2018_01_28).  The Model Catalog is a set of open source models that can be used in prototyping your project until you are ready to train your own production model.  In the models folder of the repo we provide two TensoRT models that can be used with your Jetson Xavier NX GPU and DLA that are based on ssd_mobilenet_v1_coco_2018_01_28 .  TensoRT models allow your project to execute at speeds needed for realtime applications.  In the tools folder we have a bash script you can execute on your Xavier NX to monitor the usage of the DLA’s, jtop (https://github.com/rbonghi/jetson_stats/wiki/jtop) the popular performance monitoring tool for Jetson devices is not capable of measuring DLA usage.

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
