clear 
clc
%x = zeros(1000,1);
fid = fopen('Copy_of_test.txt','rt');
%file_content = textscan(fid, '%s',inf,'delimiter','\n');
tline=fgetl(fid);
i=1;
data=[];
while ischar(tline)
    if(tline~=' ')
        try
        data(i,1)=Str2num(tline);
        i=i+1;
        catch
            ;
        end
    end
    tline=fgetl(fid);
end
fclose(fid);

%C=file_content{1,1}

%S=size(C);
%size=S(1);
%data=[];j=1;

%for i=1:1:size
%    if mod(i,2)==0
%        data(j)=cell2num(C(i));
%        j=j+1;
%    end
%end
%%      
%x=fscanf(fileID,'%4.4f\n');
