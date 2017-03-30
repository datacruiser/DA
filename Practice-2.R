#安装xlsx包
install.packages(xlsx)

#载入xlsx包
library(xlsx)

#设置xlsx文件所在路径
filepath <- "D:/workspace/DA-1/病例数据.xlsx"

#导入xlsx文件并设置编码为UTF-8
patientdataframe <- read.xlsx(filepath,1,encoding = "UTF-8")

#分析病人数目
patientdataframe.number <- nrow(patientdataframe)

#分析1型糖尿病病人数目
type1 <- patientdataframe[patientdataframe$糖尿病类型=="1型糖尿病",]

