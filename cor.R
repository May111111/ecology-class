#������Լ��ֶ����������
setwd("D:/ecology/R programme")#����·����ע�ⷴб��
q<-read.csv("a.csv")#���ļ�������q
write.csv(q,"b.csv")#��qд������Ϊb��csv�ļ�

#����R���Դ�������
data(iris)
head(iris)#������ǰ���У������β�����ݼ��Ļ������
myData <- iris[1:4] #ȡ1��4�в���ֵ��myData
cor(x = myData[,"Sepal.Length"],
    y = myData[,"Sepal.Width"],
    use = "everything",method = "pearson") 
    #��myData����ȡ���೤����x,
    #��myData����ȡ���������y,
    #��x,y�������ϵ��
?cor#��������
cor.test(x = myData[,"Sepal.Length"],
         y = myData[,"Sepal.Width"])
    #��ع�ϵ�����Լ���
res <- cor.test(x = myData[,"Sepal.Length"],
                y = myData[,"Sepal.Width"]) 
    #����ع�ϵ�����Լ���Ľ������res
res$p.value #��res����ȡpֵ
res$conf.int #��res����ȡ��������

#����װ�������ַ���
install.packages("corrplot")


library(corrplot) #����corrplot��
res_cor <- cor(myData) 
#�����ĸ������������ϵ�����������ֵ��res_cor
corrplot(res_cor)#����ع�ϵͼ

#���ڱ������Լ���Сд����Ҫ���ӣ�
#���ڷ�Ĭ�ϰ�װ�İ��뺯��
#һ������������кܶຯ����һ���������ܰ����ڶ�����
#ԭ�����ú���֮ǰҪ��ȡ�������ڵİ�

