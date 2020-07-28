%% ECE 403/503 Optimization for Machine Learning
%% Lab 4: Handwritten Digits Recognition Using Softmax Regression
%% Student Name (V Number)
% close all;
% clear all;
% clc;
function [e_te,e_hte,Cte,Cte_h,test_acc, test_acc_h} = lab4_main()

%Inputs: No inputs to the function
%Outputs: e_te: Efficiency in terms of number of digits recognized per second for original dataset
%         e_hte: Efficiency in terms of number of digits recognized per second for HOG of original dataset
%         Cte: Confusion matrix for the testing dataset
%         Cte_h: Confusion matrix for HOG of testing data
%         test_acc: testing accuracy for original testing data
%         test_acc_h: testing accuracy for HOG of testing data
%% Section 5.1 Download data and function files from the course website the data sets
load('X1600.mat');
load('Lte28.mat');
load('Te28.mat');
%% Section 4.2 Follow Secs. 2.1 and 2.2 respectively to prepare two pairs of input data matrices {Dtr, Dte} and {Dhtr, Dhte}.
%{Dtr, Dte} and {Dhtr, Dhte}.

%% Section 5.3 Follow Sections 3 and 4 above to apply SRMCC to the original data sets to classify the 10000 test samples from MNIST.
Cte = 
test_acc = 
 
%% Section 5.4 Follow Sections 3 and 4 above to apply SRMCC to the HOGs of the data sets to classify the 10000 test samples from MNIST.
Cte_h= 
test_acc_h = 
%% Section 5.5 Compare and comment on the performance of the two classifiers from Items 5.3 ad 5.4 in terms of both accuracy and efficiency. Here the term “efficiency” refers to the speed of recognition


e_te = 
e_hte = 