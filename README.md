### 基于PPG的视频信号心率提取及心理健康预测

“吼”组

[![Macos](https://img.shields.io/badge/MacOS-PASSED-GREEN.svg)](./doc/INSTALL_MacOS.md)  [![MinGW](https://img.shields.io/badge/MinGW-PROCESSING-LIGHTCORAL.svg)](./doc/INSTALL_MinGW.md)

#### 一、项目介绍

##### 1. 产品前景

​	如今，人们对医疗、安全与健康的需求日益增长。心率监测是分析人体生理与心理健康状况的重要手段，通过对心率的监测，可以实现对用户的生理和心理健康状态的分析，从而实现在医疗、安全等领域的应用。汽车上，通过心率监测及健康状态估计可以掌握驾驶员的疲劳状况，从而适时提醒，避免疲劳驾驶及安全问题。部分监控场合，也可通过测量心率获取被监控对象的心理生理健康状况，从而及时进行救助。

​	我们的软件可以通过获取视频中的人脸反映出的心率信息，结合对心率信息的经典分析方法，实现对人的心率监测和简单的健康状况估计，力图为公众的安全健康保障添砖加瓦。

##### 2. 产品功能

​	目前，医院最普遍的方法是采用心电图机（EEG）检查患者的心脏功能，但监测时间较短且人力物力成本较高。大多消费类电子设备如穿戴式手环、手表通常是监测用户的运动心率，且受限于功耗，通常五分钟或十分钟才测一次，医学参考价值不大，且应用场景受限（需要佩戴手环）。

​	DARMA是一家创立于美国硅谷的创新医疗健康科技公司，旗下的一款监测垫可以非接触式的测量心率，无需穿戴、无需直接接触便可以进行心率、呼吸频率等生命体征的监测。但仅能监测睡眠时的健康状况，对普通民众的应用场景有限。

​	综上可知，目前的心率监测方式存在使用场景受限的问题。因此，我们希望实现一款非接触式的心率监测软件，能够通过摄像机对目标区域的拍摄获取被监测者的面部图像，分析得到对应的PPG信号，并结合对指夹器信号的学习，实现对心率的监测。

##### 3. 预期用户

​	我们的软件能够在非接触、甚至不知情的情况下对人员的心率进行监测。因此，我们的软件及设备可以用于机动车中，用来监测司机的心率以确保驾驶的安全等。此外，在某些重大的刑事案件、或关乎国家安全等重要事件的调查中，可以在被监测方不知情的情况下检测其心率，并从而获知其基本的心理健康等状态。

#### 二、初步分工

+ **顾炜伦、胡彦**：人脸检测及检测选框算法
  + [x] 初步：检测人脸后确定选框计算表征心率的值，优化选框位置抖动现象，基本实现有效的信号采集功能；
  + [x] 进阶：选择合适方法提取信号，如比较均值与其他滤波、不同相机、不同颜色空间等；C++版本；
+ **席大鹏、吴研**：图形界面开发
  + [ ] 初步：学习 `Qt`，尝试使用 `Qt` 基本功能、视频流获取与显示、文件浏览器等；
  + [ ] 进阶：使用 `Qt` 开发界面；集成 OpenCV；PyQt 链接及 对应 makefile 编译相关内容；
+ **刘雨辰、何炜华**：信号滤波与心率提取
  + [x] 初步：对检测组得到的信号进行滤波，得到平滑且不失真的心率信号；提取基本信息如周期、幅值等；信号切片与格式化保存（为训练做初步准备）；
  + [ ] 进阶：使用在线算法；训练神经网络识别简单情绪；
+ **苏星宇**：统筹及相关
  + [x] 初步：各部分需求与接口设计，确立时间节点，完善任务分配；协助各组；
  + [ ] 进阶：协调各组完成最终软件的开发；
+ **田洋**：实验及相关
  + [ ] 初步：实验安排及开展、基本数据处理；协助各组；
  + [ ] 进阶：待定；