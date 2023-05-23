clc
clear all
close all
 a=hdf5info('Jones_Problem.h5')
 b=a.GroupHierarchy
 c=b.Groups(9)
 d=c.Datasets(5)
 data=hdf5read('Jones_Problem.h5','/Well/07. Property')
 brk_pt=1