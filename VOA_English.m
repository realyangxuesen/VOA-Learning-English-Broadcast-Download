clc
clear
%创建VOA下载链接
% e.g. https://av.voanews.com/clips/VLE/2018/10/28/20181028-003000-VLE122-program_hq.mp3?download=1
year='2018';
Month='9';
fp=fopen('下载链接.txt','w');
if str2num(Month)<10
    for i=1:31
        if i<10
            str=strcat('https://av.voanews.com/clips/VLE/',year,'/','0',Month,'/','0',num2str(i),'/',year,'0',Month,'0',num2str(i),'-003000-VLE122-program_hq.mp3?download=1');
        else
            str=strcat('https://av.voanews.com/clips/VLE/',year,'/','0',Month,'/',num2str(i),'/',year,'0',Month,num2str(i),'-003000-VLE122-program_hq.mp3?download=1');
        end
        fprintf(fp,'%s\n',str);
    end
else
    for i=1:31
        if i<10
            str=strcat('https://av.voanews.com/clips/VLE/',year,'/',Month,'/','0',num2str(i),'/',year,Month,'0',num2str(i),'-003000-VLE122-program_hq.mp3?download=1');
        else
            str=strcat('https://av.voanews.com/clips/VLE/',year,'/',Month,'/',num2str(i),'/',year,Month,num2str(i),'-003000-VLE122-program_hq.mp3?download=1');
        end
        fprintf(fp,'%s\n',str);
    end
end
fclose(fp);