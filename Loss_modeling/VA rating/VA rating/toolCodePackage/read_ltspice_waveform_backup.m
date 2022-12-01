% This function reads the exported waveforms from LTSpice
% Written by Yutian Lei

% Output is a structure array that has three field, info, time and value

% Currently only works for a waveform file with a single waveform
% Currently only works for waveform file with multiple simulation steps
function y=read_ltspice_waveform(file_name)
    data_file=fopen(file_name);
    C=textscan(data_file,'%s',-1,'delimiter','\n');

    lines = C{1};       % saves each line as an entry
    p = length(lines);   % p is the number of lines in the file
    
    first_line = strsplit(lines{1});
    
    y = struct('info',{},'time',{},'value',{});

    i = 1;
    num_run = 0;
    while i < p     % go through each line
        i = i+1;
        display(i)
        occurrance = strfind(lines{i},'Run');
        if isempty(occurrance) == 0    % the current line contains run information
            num_run = num_run + 1;
            y(num_run).info = lines(i);  % store the run info
            t = [];
            x = [];
            for j = (i+1):p   % now continue to read the data
                occurrance = strfind(lines{j},'Run');
                if isempty(occurrance) == 0    % stop if hit next run
                    i = j - 1;
                    break;
                end
                values = strsplit(lines{j});
                t(end+1) = str2num(values{1});
                x(end+1) = str2num(values{2});
                i = p;
            end
            y(num_run).time = t;
            y(num_run).value = x;
        end
    end
    fclose(data_file);
end