clear all;
close all;
load('data3D.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIGURE SPECIFICATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nrow = round(sqrt(length(data(1,1,:)))); % number of subplots to be created in the y direction
ncol = nrow;                             % number of subplots to be created in the x direction

% main plot specifications
mainPlotMarginTop = 0.06;       % top margin of the main axes in figure
mainPlotMarginBottom = 0.12;    % bottom margin of the main axes in figure
mainPlotMarginLeft = 0.08;      % bottom margin of the main axes in figure
mainPlotMarginRight = 0.1;      % right margin of the main axes in figure
mainPlotPositionX = 0.05;       % the x coordinate of the bottom left corner of the main axes in figure
mainPlotPositionY = 0.08;       % the y coordinate of the bottom left corner of the main axes in figure
mainPlotWidth = 1 - mainPlotMarginRight - mainPlotPositionX; % the width of the main axes in figure
mainPlotHeight = 1 - mainPlotMarginTop - mainPlotPositionY; % the height of the main axes in figure
mainPlotTitleFontSize = 12;     % The font size for the main plot labels and title
mainPlotAxisFontSize = 12;      % The font size for the main plot labels and title

% subplot properties
subPlotFontSize = 10;     % the font size for subplots
subplotInterspace = 0.03; % space between subplots
subplotWidth = (1-mainPlotMarginLeft-mainPlotMarginRight-nrow*subplotInterspace)/ncol;   % The width of subplots
subplotHeight = (1-mainPlotMarginTop-mainPlotMarginBottom-ncol*subplotInterspace)/nrow ; % The height of subplots

% specifications of the color bar to the figure
colorbarFontSize = 13;                                           % the font size of the color bar
colorbarWidth = 0.03;                                            % the width of the color bar
colorbarPositionY = mainPlotMarginBottom;                        % the y-position of the color bar
colorbarPositionX = 1 - mainPlotMarginRight;                     % the x-position of the color bar
colorbarHeight = nrow*subplotHeight+(nrow-1)*subplotInterspace;  % the height of the color bar
colorLimits = [0,max(max(max(data(:,:,:))))];                    % the color bar limits, the dataset contains numbers between 0 and some large number.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIRST CREATE A FIGURE HANDLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figHandle = figure();                           % create a new figure
figHandle.Visible = 'on';                       % set the visibility of figure in MATLAB
figHandle.Position = [70, 10, 700, 1000];         % set the position and size of the figure
figHandle.Color = [0.9400 0.9400 0.9400];       % set the background color of the figure to MATLAB default. You could try other options, such as 'none' or color names 'red',...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADD THE MAIN AXES TO THE FIGURE: 
% The main axes is needed in order to add
% the x and y labels and the color bar
% for the entire figure.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mainPlot = axes();              % create a set of axes in this figure. This main axes is needed in order to add the x and y labels and the color bar for the entire figure.
mainPlot.Color = 'none';        % set color to none
mainPlot.FontSize = 11;         % set the main plot font size
mainPlot.Position = [ mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight ]; % set position of the axes
mainPlot.XLim = [0 1];          % set X axis limits
mainPlot.YLim = [0 1];          % set Y axis limits
mainPlot.XLabel.String = 'Voxel Number in X Direction'; % set X axis label
mainPlot.YLabel.String = 'Voxel Number in Y Direction'; % set Y axis label
mainPlot.XTick = [];            % remove the x-axis tick marks
mainPlot.YTick = [];            % remove the y-axis tick marks
mainPlot.XAxis.Visible = 'off'; % hide the x-axis line, because we only want to keep the x-axis label
mainPlot.YAxis.Visible = 'off'; % hide the y-axis line, because we only want to keep the y-axis label
mainPlot.XLabel.Visible = 'on'; % make the x-axis label visible, while the x-axis line itself, has been turned off;
mainPlot.YLabel.Visible = 'on'; % make the y-axis label visible, while the y-axis line itself, has been turned off;
mainPlot.Title.String = ['A beautiful design of ',sprintf('%0.1f',nrow),' x ',sprintf('%0.1f',ncol),' subplots using MATLAB']; % set the title of the figure
mainPlot.XLabel.FontSize = mainPlotAxisFontSize; % set the font size for the x-axis in mainPlot
mainPlot.YLabel.FontSize = mainPlotAxisFontSize; % set the font size for the y-axis in mainPlot
mainPlot.Title.FontSize = mainPlotTitleFontSize; % set the font size for the title in mainPlot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADD COLORBAR TO THE FIGURE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% now add the color bar to the figure
axes(mainPlot);                       % focus on the mainPlot axes, because this is where we want to add the colorbar
caxis(colorLimits);                   % set the colorbar limits
cbar = colorbar;                      % create the color bar!
ylabel(cbar,'Number of Tumor Cells'); % now add the color bar label to it
cbar.Position = [ colorbarPositionX ... Now reset the position for the colorbar, to bring it to the rightmost part of the plot
                  colorbarPositionY ...
                  colorbarWidth ...
                  colorbarHeight ...
                ];
cbar.FontSize = colorbarFontSize;     % set the fontsize of the colorbar

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADD THE SUBPLOTS TO THE FIGURE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sliceNumber = 0;
for irow = nrow:-1:1
    for icol = 1:ncol
        sliceNumber = sliceNumber + 1;
        subPlot = axes( 'position', [ ... set the position of the axes for each subplot
                                      (icol-1)*(subplotInterspace+subplotWidth) + mainPlotMarginLeft ...
                                      (irow-1)*(subplotInterspace+subplotHeight) + mainPlotMarginBottom ...
                                      subplotWidth ...
                                      subplotHeight ...
                                    ] ...
                      );
                  
        set ( gca, 'ydir', 'reverse' );
        
        imagesc(data(:,:,sliceNumber),colorLimits);
       
        if sliceNumber>=13
            subPlot.XAxis.Visible = 'on';
        else
            subPlot.XAxis.Visible = 'off';
        end
        
        subPlot.Title.String = ['z = ',sprintf('%d',sliceNumber)];
        
        [B,L] = bwboundaries(data(:,:,sliceNumber),'noholes');        
        hold on
        
        for k = 1:length(B)
            boundary = B{k};
            plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 4.5)
        end
        
    end
end

saveas(gcf,'currentPlot2.png');        % save the figure