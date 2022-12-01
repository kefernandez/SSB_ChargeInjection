********************************
This folder contains Matlab scripts that are useful tools for preparing publications.
********************************
set_figure_style_pre(scale):
	Set the default line width and marker size used by the current Matlab session.
set_figure_style(scale): 
	Set the style for figures. Use latex font and interpreter. Use grey solid line for major grid and grey dotted line for minor grid. Font size is 8*scale for all texts. Default: scale = 2
resize_figure(scale, ratio): 
	Resize the current Matlab figure, width = 2.5 in * scale, and height = width*ratio. Default: scale = 2, ratio = 0.618
export_figure('figure_name'): 
	Export the current Matlab figure. Available formats are eps, pdf, png. An additional matlab .fig is always saved. 
distinguishable_colors(numer_of_color): 
	Return colors that are easily distinguishable. Downloaded from Matlab Central.

********************************
Example usage:
At the start of a script, use
set_figure_style_pre(2);	% relative size 2

After plotting in Matlab, use the following,
set_figure_style(2);		% relative size 2
resize_figure(2,0.7);		% relative size 2, aspect ratio 0.7
export_figure('figure_name','pdf,png');		% save as figure_name.pdf and figure_name.png


********************************
Important note:
Since the interpreter is changed to latex, it is necessary to use Latex syntex in the texts/labels. For example, the math environment $$ needs to be added around C_1, i.e. $C_1$, for the label to be interpreted correctly.

********************************
Major change log:
2016-08-06: set_figure_style() now changes the inset so that there is white margin for any figure format saved. The width is as specified now as well.
2016-08-04: export_figure now also saves the Matlab figure format. It also accepts options to choose which format to save.
2016-08-02: set_figure_style now works for figure with subplots.

********************************
Known issues:
export_figure:	

set_figure_style:	
	Label text should be in size 9, but the change all text font size will change label text of the previous subplots in subplots
	The codes that worked for removing the white background does not work for figures with subplots.

