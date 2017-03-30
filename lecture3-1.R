#尝试用strsplit进行处理，提示不能处理非character类型的数据
timeSplit <- strsplit(excelData$time," ")
#查看time的类型，默认是factor
class(excelData$time)
#将time转换成character类型
excelData$time <- as.character(excelData$time)
#再次对时间进行分割处理
timeSplit <- strsplit(excelData$time," ")
#将timeSplit非list化，由于strsplit返回的是一个list对象
timeSplit <- unlist(timeSplit)
#提取timeSplit奇数
del <- seq(1, length(timeSplit), by = 2)
#将timeSplit奇数位的数据赋值给time
excelData$time <- timeSplit[del]