function [x y]=read_Ltspice_data(file_name,data_name)

data_file=fopen(file_name);
C=textscan(data_file,'%s',-1,'delimiter','\n');
p=length(C{1});

% Find number of iterations and x-axis values
found=false;
iterations=0;
x=[1];
y=[1];
for i=1:p
    occurrance=strfind(C{1}(i),'.step')
    if isempty(occurrance{1})==0
        occurrance=strfind(C{1}(i),'=');
        string_cell=C{1}(i);
        string=string_cell{1}(occurrance{1}+1:end);
        iterations=iterations+1;
        x(iterations)=str2double(string);
        for j=i+1:p
            occurrance=strfind(C{1}(j),'.step');
            if isempty(occurrance{1})==0
                occurrance=strfind(C{1}(j),'=');
                string_cell=C{1}(j);
                string=string_cell{1}(occurrance{1}+1:end);
                iterations=iterations+1;
                x(iterations)=str2double(string);
            else
                break;
            end
        end
        break;
    end

end
display(iterations);
display(x);


% Get y-axix values
for i=1:p
    target_name=horzcat('Measurement: ',data_name);
    occurrance=strfind(C{1}(i),target_name);
    if isempty(occurrance{1})==0
        for j=i+2:i+1+iterations
            string_cell=C{1}(j);
            string=string_cell{1};
            string=strread(string,'%s');
            value=string(2);
            y(j-i-1)=str2double(value);
        end
        break;
    end

end
display(y)
fclose(data_file);
end