


FOR %%p IN (0, 1, 2) DO mkdir ..\data\TLR4\predictions_TLR4_6_%%p
FOR %%p IN (0, 1, 2) DO python  predict.py --save_weights_path="weights\\TLR4_6" --epoch_number=%%p --test_images="..\\data\\TLR4\\test\\images\\" --output_path="..\\data\\TLR4\\predictions_TLR4_6_%%p\\" --n_classes=4 --input_height=512 --input_width=512 --model_name="vgg_segnet"


FOR %%p IN (0, 1, 2) DO mkdir ..\data\TLR4\train_results_TLR4_6_%%p
FOR %%p IN (0, 1, 2) DO python  predict.py --save_weights_path="weights\\TLR4_6" --epoch_number=%%p --test_images="..\\data\\TLR4\\train\\images\\" --output_path="..\\data\\TLR4\\train_results_TLR4_6_%%p\\" --n_classes=4 --input_height=512 --input_width=512 --model_name="vgg_segnet"

timeout 10
