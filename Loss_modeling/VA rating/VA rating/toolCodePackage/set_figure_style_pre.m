function set_figure_style_pre(scale)

    if nargin <1
        scale = 2;
    end
    
    % Line width
    set(0,'DefaultLinelineWidth', 0.8*scale)
    set(0,'DefaultLineMarkerSize',4*scale)
    set(0,'DefaultAxesFontSize',8*scale)
end

