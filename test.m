% test all segmentation metric functions
SEG = imread('0.png');
GT = imread('1.bmp');

% binarize
SEG = im2bw(SEG, 0.1);
GT = im2bw(GT, 0.1);

dr = Dice_Ratio(SEG, GT)
hd = Hausdorff_Dist(SEG, GT)
jaccard = Jaccard_Index(SEG, GT)
apd = Avg_PerpenDist(SEG, GT)
confm_index = ConformityCoefficient(SEG, GT)
precision = Precision(SEG, GT)
recall = Recall(SEG, GT)