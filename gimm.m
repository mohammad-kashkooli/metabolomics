clc;
clear all;
close all;
initCobraToolbox;

changeCobraSolver('glpk', 'all');
model_add ='/home/nahid/SiaVash/iMS570g2 (1).mat'
model_0 = readCbModel(model_add);
 expression=readtable('/home/nahid/SiaVash/gene_code2.csv');
 a=table2array(expression(:,1))
 b=table2array(expression(:,2))
 c=[a ,b];


threshold=1.4;
tissueModel = GIMME(model_0, c, threshold)
