function export_figure_test(name)

if nargin <1
    name =  'matlab_figure';
end

% print('-dpng','-r300', strcat(name,'.png'));   % exort as png
print('-depsc',strcat(name,'.eps'));    % export as eps
print('-dpdf', '-painters',strcat(name,'.pdf'));    % export as pdf

end


