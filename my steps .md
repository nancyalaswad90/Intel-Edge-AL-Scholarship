
## 8. Solution: Loading Pre-Trained Models

 Loading Pre-Trained Models

Make sure to click the button below before you get started to source the correct environment.

1. * SOURCE ENV*
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


