% This function reads the exported waveforms from LTSpice
% Written by Yutian Lei

% Output is a structure array that has three field, info, time and value

% Works for a waveform file with a single or multiple waveforms
% Works for waveform file with a single or multiple simulation steps
function y=read_ltspice_waveform(file_name,mode,num_variable)

    if nargin ~= 3 
        display('Incorrect number of arguments')
        return
    end
    
    if strcmp(mode,'single') == 1
        key = 'time';
    elseif strcmp(mode,'step') == 1
        key = 'Step';
    else
        display('Invalid mode. Use either single or step');
    end
    
    data_file=fopen(file_name);
    C=textscan(data_file,'%s',-1,'delimiter','\n');

    lines = C{1};       % saves each line as an entry
    p = length(lines);   % p is the number of lines in the file
    
    first_line = strsplit(lines{1});
    
    y = struct('info',{},'time',{},'values',{});

    i = 0;
    num_run = 0;
    while i < p     % go through each line
        i = i+1;
        display(i)
        occurrance = strfind(lines{i},key)
        if isempty(occurrance) == 0    % the current line contains run information
            num_run = num_run + 1;
            y(num_run).info = lines(i);  % store the run info
            t = [];
            x = [];
            for j = (i+1):p   % now continue to read the data
                occurrance = strfind(lines{j},key);
                if isempty(occurrance) == 0    % stop if hit next run
                    i = j - 1;
                    break;
                end
                values = strsplit(lines{j});
                t(end+1) = str2num(values{1});
                temp = [];
                for index = 1:num_variable
                    temp(1,end+1) = str2num(values{index+1});
                end
                x(end+1,:) = temp;
                i = p;
            end
            y(num_run).time = t;
            y(num_run).values = x;
        end
    end
    fclose(data_file);
end