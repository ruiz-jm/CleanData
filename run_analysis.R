library(dplyr)
##read df for test
tabla<-read.table('activity_labels.txt', sep="")
actlab<-as.character(tabla[,2])


act<-read.table('test/y_test.txt', sep="")
subj<-read.table('test/subject_test.txt', sep="")
act<-rowMeans(act)
subj<-rowMeans(subj)

bacx<-read.table('test/Inertial signals/body_acc_x_test.txt', sep="")
bacxm<-rowMeans(bacx)
bacxsd<-apply(bacx[,-1], 1, sd)

bacy<-read.table('test/Inertial signals/body_acc_y_test.txt', sep="")
bacym<-rowMeans(bacy)
bacysd<-apply(bacy[,-1], 1, sd)

bacz<-read.table('test/Inertial signals/body_acc_z_test.txt', sep="")
baczm<-rowMeans(bacz)
baczsd<-apply(bacz[,-1], 1, sd)

bgx<-read.table('test/Inertial signals/body_gyro_x_test.txt', sep="")
bgxm<-rowMeans(bgx)
bgxsd<-apply(bgx[,-1], 1, sd)

bgy<-read.table('test/Inertial signals/body_gyro_y_test.txt', sep="")
bgym<-rowMeans(bgy)
bgysd<-apply(bgy[,-1], 1, sd)

bgz<-read.table('test/Inertial signals/body_gyro_z_test.txt', sep="")
bgzm<-rowMeans(bgz)
bgzsd<-apply(bgz[,-1], 1, sd)


taccx<-read.table('test/Inertial signals/total_acc_x_test.txt', sep="")
taccxm<-rowMeans(taccx)
taccxsd<-apply(taccx[,-1], 1, sd)

taccy<-read.table('test/Inertial signals/total_acc_y_test.txt', sep="")
taccym<-rowMeans(taccy)
taccysd<-apply(taccy[,-1], 1, sd)

taccz<-read.table('test/Inertial signals/total_acc_z_test.txt', sep="")
tacczm<-rowMeans(taccz)
tacczsd<-apply(taccz[,-1], 1, sd)


activity<-as.factor(act)
levels(activity)<-actlab
act<-as.numeric(act)
df1<-data.frame(subj,activity,act,bacxm,bacxsd,bacym,bacysd,baczm,baczsd,bgxm,bgxsd,bgym,bgysd,bgzm,bgzsd,taccxm,taccxsd,taccym,taccysd,tacczm,tacczsd)

df1<-mutate(df1,group='test')




#head(df1,10)




######################################################

#read df for train


tabla<-read.table('activity_labels.txt', sep="")
actlab<-as.character(tabla[,2])
act<-read.table('train/y_train.txt', sep="")
subj<-read.table('train/subject_train.txt', sep="")
act<-rowMeans(act)
subj<-rowMeans(subj)

bacx<-read.table('train/Inertial signals/body_acc_x_train.txt', sep="")
bacxm<-rowMeans(bacx)
bacxsd<-apply(bacx[,-1], 1, sd)

bacy<-read.table('train/Inertial signals/body_acc_y_train.txt', sep="")
bacym<-rowMeans(bacy)
bacysd<-apply(bacy[,-1], 1, sd)

bacz<-read.table('train/Inertial signals/body_acc_z_train.txt', sep="")
baczm<-rowMeans(bacz)
baczsd<-apply(bacz[,-1], 1, sd)
##########
bgx<-read.table('train/Inertial signals/body_gyro_x_train.txt', sep="")
bgxm<-rowMeans(bgx)
bgxsd<-apply(bgx[,-1], 1, sd)

bgy<-read.table('train/Inertial signals/body_gyro_y_train.txt', sep="")
bgym<-rowMeans(bgy)
bgysd<-apply(bgy[,-1], 1, sd)

bgz<-read.table('train/Inertial signals/body_gyro_z_train.txt', sep="")
bgzm<-rowMeans(bgz)
bgzsd<-apply(bgz[,-1], 1, sd)
#####

taccx<-read.table('train/Inertial signals/total_acc_x_train.txt', sep="")
taccxm<-rowMeans(taccx)
taccxsd<-apply(taccx[,-1], 1, sd)

taccy<-read.table('train/Inertial signals/total_acc_y_train.txt', sep="")
taccym<-rowMeans(taccy)
taccysd<-apply(taccy[,-1], 1, sd)

taccz<-read.table('train/Inertial signals/total_acc_z_train.txt', sep="")
tacczm<-rowMeans(taccz)
tacczsd<-apply(taccz[,-1], 1, sd)





activity<-as.factor(act)
levels(activity)<-actlab
act<-as.numeric(act)
df2<-data.frame(subj,activity,act,bacxm,bacxsd,bacym,bacysd,baczm,baczsd,bgxm,bgxsd,bgym,bgysd,bgzm,bgzsd,taccxm,taccxsd,taccym,taccysd,tacczm,tacczsd)
df2<-mutate(df2,group='train')




#head(df2,10)


#####################################################
#Merge the two dataframes

df<-rbind(df1,df2)
df<-df[order(df$subj,df$act),]
names(df)<-c('subject','activity','act_code','bod_acc_x_mean','bod_acc_x_sd','bod_acc_y_mean','bod_acc_y_sd','bod_acc_z_mean','bod_acc_z_sd','bod_gyro_x_mean','bod_gyro_x_sd','bod_gyro_y_mean','bod_gyro_y_sd','bod_gyro_z_mean','bod_gyro_z_sd','tot_acc_x_mean','tot_acc_x_sd','tot_acc_y_mean','tot_acc_y_sd','tot_acc_z_mean','tot_acc_z_sd','group')
#head(df,10)


write.table(df,"mergedset.txt",row.name=FALSE)


 #####################################
#delete the character columns, activity and group

  dfq<-df[,-c(2,22)]

 new.row<-list()
dfq$subj<-as.numeric(dfq$subj)
 df4<-data.frame()
  

for(j in 1:30){
#df4$subj=j
for(i in 1:6){

 new.row<-colMeans(dfq[dfq$subj==j&dfq$act==i,])
 
 
 
 df4<-rbind(df4,new.row)
 
  
}
}

act<-as.factor(act)
levels(activity)<-actlab

new.id<-list()
g<-data.frame()

for (k in 1:30)
{
  if(df4[k,1] %in% df1$subj ){
 new.id<-1 #c(k,'test')   
    
  }
  else{new.id<-0} 
  
  g<-rbind(g,new.id)
  
}
names(g)<-'group'

df4<-cbind(g,df4)
df4<-df4[,-c(22)]
names(df4)<-c('group', 'subject','activity','bod_acc_x_mean','bod_acc_x_sd','bod_acc_y_mean','bod_acc_y_sd','bod_acc_z_mean','bod_acc_z_sd','bod_gyro_x_mean','bod_gyro_x_sd','bod_gyro_y_mean','bod_gyro_y_sd','bod_gyro_z_mean','bod_gyro_z_sd','tot_acc_x_mean','tot_acc_x_sd','tot_acc_y_mean','tot_acc_y_sd','tot_acc_z_mean','tot_acc_z_sd')



df4$activity<-as.factor(df4$activity)
levels(df4$activity)<-actlab


grouplab<-c('train','test')
df4$group<-as.factor(df4$group)
levels(df4$group)<-grouplab
 
write.table(df4,"averages.txt",row.name=FALSE)