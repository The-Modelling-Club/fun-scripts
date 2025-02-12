



clc; clear; close all;

% heart shape function
t = linspace(0, 2*pi, 1000);
x = 16 * sin(t).^3;
y = 13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t);

fig = figure;
ax = axes;
hold on;
axis equal;
xlim([-20, 20]);
ylim([-20, 20]);
ax.XColor = 'none';
ax.YColor = 'none';

text(0, -20, 'Happy Valentines Day! from The Modelling Club', ...
    'FontSize', 12, 'Color', '#FF7700', 'HorizontalAlignment', 'center');

hLine = animatedline('Color', '#FF7700', 'LineWidth', 1);

hFill = fill(x, y, [1, 0.75, 0.8], 'FaceAlpha', 0.2, 'EdgeColor', 'none');

% I'm saving the file in the documents folder (with the
% fullpath) because of write permissions on my computer.
% If you want to run this script on your machine, change the directory to match your system's file
% structure, replace <username> with the appropriate name.
filename = 'C:\Users\<username>\Documents\animated_love_tmc.gif';

for frame = 1:100
    % Compute scaling factor for pulsating effect
    scale = 1 + 0.1 * sin(frame * 0.1);
    x_scaled = x * scale;
    y_scaled = y * scale;
    
    set(hFill, 'XData', x_scaled, 'YData', y_scaled);
    
    clearpoints(hLine);
    addpoints(hLine, x_scaled, y_scaled);
    
    % Capture frame for GIF
    drawnow;
    frameImg = getframe(fig);
    im = frame2im(frameImg);
    [A, map] = rgb2ind(im, 256);
    
    if frame == 1
        imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.05);
    else
        imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.05);
    end
end

hold off;
disp('Animation saved as animated_love_tmc.gif');
