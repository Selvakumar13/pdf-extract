wb<-createWorkbook(type="xlsx")
saveWorkbook(wb,'C:\\Users\\DELL\\Desktop\\R course\\R files\\pfd\\output.xlsx')
asd=c(21:22)
my_list<-paste0(1:10)
for (i in asd){
  for (y in (1:10)){
  test<-extract_areas('C:\\Users\\DELL\\Desktop\\R course\\R files\\pfd\\pdffile.pdf',pages = i,method='stream',output='data.frame')
 print(test)
 s<-1
write.xlsx(test,'C:\\Users\\DELL\\Desktop\\R course\\R files\\pfd\\output.xlsx',sheetName= cat(my_list[s]),append = TRUE)
break
  }
}

