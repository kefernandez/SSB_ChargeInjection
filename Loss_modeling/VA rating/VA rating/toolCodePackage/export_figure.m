function export_figure(name,options)

    if nargin <1
        name =  'matlab_figure';
    end

    if nargin <2
        options =  'eps,png';
    end


    savefig(name);  % same as .fig

    if not (isempty(strfind(options,'eps')))
        print('-depsc',strcat(name,'.eps'));    % export as eps
    end

    if not (isempty(strfind(options,'pdf')))
        print('-dpdf', '-painters',strcat(name,'.pdf'));    % export as pdf
    end

    if not (isempty(strfind(options,'png')))
        print('-dpng','-r300', strcat(name,'.png'));   % exort as png
    end


end
