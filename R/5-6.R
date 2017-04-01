#设定小数点后位数
options(digits = 2)
#输入学生名字
Student <- c("John Davis", "Angela Williams", "Bullwinkle Moose",
             "David Jones", "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
#输入分数
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English, 
                     stringsAsFactors = FALSE)
#分数标准化
z <- scale(roster[, 2:4])
#标准化后分数求平均
score <- apply(z, 1, mean)
#数据框中增加综合分列
roster <- cbind(roster, score)
#给出综合分的百分位数
y <- quantile(score, c(.8, .6, .4, .2))
#增加grade列并根据综合分高低赋值为A、B、C、D、F
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"

#将名字分离为列表
name <- strsplit(roster$Student, " ")

#新建Lastname和Firstname列并将name列表中的数值赋予相关列
Lastname <- sapply(name, "[", 2)
Firstname <- sapply(name, "[", 1)

#roster中新增Lastname和Firstname列，删除Student列
roster <- cbind(Firstname, Lastname, roster[, -1])

#根据姓氏和名字排序，注意order函数后面不要少了“,”
roster <- roster[order(Lastname, Firstname),]

roster



