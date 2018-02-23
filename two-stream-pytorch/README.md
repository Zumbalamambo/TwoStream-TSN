# PyTorch implementation of popular two-stream frameworks for video action recognition
```
Temporal Segment Networks: Towards Good Practices for Deep Action Recognition,
Limin Wang, Yuanjun Xiong, Zhe Wang, Yu Qiao, Dahua Lin, Xiaoou Tang, Luc Van Gool
ECCV 2016

Deep Temporal Linear Encoding Networks
Ali Diba, Vivek Sharma, Luc Van Gool
https://arxiv.org/abs/1611.06678

Hidden Two-Stream Convolutional Networks for Action Recognition
Yi Zhu, Zhenzhong Lan, Shawn Newsam, Alexander G. Hauptmann
https://arxiv.org/abs/1704.00389
```

## Installation
File作成
```
python build_of.py --src_dir ./UCF-101 --out_dir ./ucf101_frames --df_path <path to dense_flow.exe>
```
List作成
```
python build_file_list.py --frame_path ./ucf101_frames --out_list_path ./settings
```
Training
```
python main_single_gpu.py DATA_PATH -m rgb -a rgb_resnet152 --new_length=1
--epochs 250 --lr 0.001 --lr_steps 100 200
```

## Memo
1080Tiだとバッチサイズが50だとRAMオーバーするので10あたりに設定しないとだめ
