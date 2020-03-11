#如果是自己手动输入的数据
setwd("D:/ecology/R programme")#设置路径，注意反斜杠
q<-read.csv("a.csv")#读文件并赋给q
write.csv(q,"b.csv")#将q写入名字为b的csv文件

#加载R包自带的数据
data(iris)
head(iris)#看数据前几行，关于鸢尾花数据集的基本情况
myData <- iris[1:4] #取1到4列并赋值给myData
cor(x = myData[,"Sepal.Length"],
    y = myData[,"Sepal.Width"],
    use = "everything",method = "pearson") 
    #从myData里面取花萼长赋给x,
    #从myData里面取花萼宽赋给y,
    #算x,y两者相关系数
?cor#求助函数
cor.test(x = myData[,"Sepal.Length"],
         y = myData[,"Sepal.Width"])
    #相关关系显著性检验
res <- cor.test(x = myData[,"Sepal.Length"],
                y = myData[,"Sepal.Width"]) 
    #将相关关系显著性检验的结果赋给res
res$p.value #从res里面取p值
res$conf.int #从res里面取置信区间

#关于装包的两种方法
install.packages("corrplot")


library(corrplot) #调用corrplot包
res_cor <- cor(myData) 
#计算四个变量两两相关系数并将结果赋值给res_cor
corrplot(res_cor)#画相关关系图

#关于标点符号以及大小写（不要掉坑）
#对于非默认安装的包与函数
#一个包里面可以有很多函数，一个函数可能包含在多个包里。
#原则是用函数之前要调取函数所在的包


