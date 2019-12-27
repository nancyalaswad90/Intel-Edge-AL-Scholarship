Loading Pre-Trained Models
Make sure to click the button below before you get started to source the correct environment.

1. SOURCE ENV
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

