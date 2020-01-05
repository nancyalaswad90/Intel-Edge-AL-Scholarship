
## 8. Solution: Loading Pre-Trained Models

 Loading Pre-Trained Models

Make sure to click the button below before you get started to source the correct environment.

1. * SOURCE ENV*

![image](https://user-images.githubusercontent.com/36210723/71602152-89ae2400-2b5f-11ea-9920-4d69272104a0.png)


2.cd /opt/intel/openvino/deployment_tools/open_model_zoo/tools/downloader
3.python downloader.py -h
4.ls
5.sudo ./downloader.py --name human-pose-estimation-0001 -o /home/workspace
6.sudo ./downloader.py --name text-detection-0004 --precisions FP16 -o /home/workspace
7.sudo ./downloader.py --name vehicle-attributes-recognition-barrier-0039 --precisions INT8 -o /home/workspace
8. to verify the directory we ask  ( ls)
9.cd /home/workspace/intel
(venv) root@35b6a7cbb46f:/home/workspace/intel#

10. then (cd intel)

## 13. Solution:

Testing
To test your implementation, you can just run ** python test.py.**


## Run the following command line

- cd models 

- ls

- cd ..   ( this moves the directory back once. So from /home/workspace/models it will move to /home/workspace )

-  cd /home/workspace

- `python app.py -i "images/sitting-on-car.jpg" -t "POSE" -m "/home/workspace/models/human-pose-estimation-0001.xml" -c "/opt/intel/openvino/deployment_tools/inference_engine/lib/intel64/libcpu_extension_sse4.so"`

- `python app.py -i "images/sign.jpg" -t "TEXT" -m "/home/workspace/models/text-detection-0004.xml" -c "/opt/intel/openvino/deployment_tools/inference_engine/lib/intel64/libcpu_extension_sse4.so"`


 - By the way, the error you had on the wrong  `directory /home/workspace/models`   is because when you use the command line
`python`

you need to be on the same directory of the code you want to execute which in this case is ` app.py`   
`python app.py`

app.py is at the directory /home/workspace

![image](https://user-images.githubusercontent.com/36210723/71599174-65981600-2b52-11ea-8d53-73ae9e7fe3e7.png)





## lesson 3.18

Lesson3-Excersice 7: Step-by-Step Read&Run
00-:.../Web-Page*:keep this webpage open and read/run the following steps:
https://docs.openvinotoolkit.org/latest/_docs_MO_DG_prepare_model_convert_model_tf_specific_Convert_Object_Detection_API_Models.html
01:.../workspace#wget download.tensorflow.org/models/object_detection/ssd_mobilenet_v2_coco_2018_03_29.tar.gz
02:.../workspace#tar -xvf ssd_mobilenet_v2_coco_2018_03_29.tar.gz
03:.../just-Read*: To convert a TensorFlow* Object Detection API model, go to the <INSTALL_DIR>/deployment_tools/model_optimizer directory and run the mo_tf.py script with the following required parameters:
04:.../workspace#MOPATH="/opt/intel/openvino/deployment_tools/model_optimizer/"
05-.../just-Read*: --input_model <path_to_frozen.pb>
06:.../workspace#MODPB="./ssd_mobilenet_v2_coco_2018_03_29/frozen_inference_graph.pb"
06:.../just-Read*: --tensorflow_use_custom_operations_config
07:.../just-Read*: For the models downloaded from the TensorFlow* Object Detection API zoo, you can find the configuration files in the <INSTALL_DIR>/deployment_tools/model_optimizer/extensions/front/tf directory. Use:...ssd_v2_support.json — for frozen SSD topologies from the models zoo
08:.../workspace#MODCFG="/opt/intel/openvino/deployment_tools/model_optimizer/extensions/front/tf/ssd_v2_support.json"
08:.../just-Read*: --tensorflow_object_detection_api_pipeline_config <path_to_pipeline.config>
09:.../workspace#PIPCFG="./ssd_mobilenet_v2_coco_2018_03_29/pipeline.config"
10:.../just-Read*: --input_shape (optional) : optional, we don't use it
11:.../just-Read*: If you convert a TensorFlow* Object Detection API model to use with the Inference Engine sample applications, you must specify the --reverse_input_channels parameter also.
12:.../workspace#$MOPATH/mo_tf.py --input_model $MODPB --tensorflow_use_custom_operations_config $MODCFG --tensorflow_object_detection_api_pipeline_config $PIPCFG --reverse_input_channels
Results
[ SUCCESS ] Generated IR model.
[ SUCCESS ] XML file: /home/workspace/./frozen_inference_graph.xml
[ SUCCESS ] BIN file: /home/workspace/./frozen_inference_graph.bin
[ SUCCESS ] Total execution time: 59.33 seconds.
both xml and bin saved on the workspace
