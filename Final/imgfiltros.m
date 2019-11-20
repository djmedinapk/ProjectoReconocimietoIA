   
function [imgRED,imgGREEN,imgBLUE] = imgfiltros(img)
    
    rgbImage = imread(img);
%     subplot(1, 3, 1);
% 	imshow(rgbImage, []);
    
    rgbImage = imresize(rgbImage,[200 200]); 
    
    imgRGB = rgbImage;
    % Extract the individual red, green, and blue color channels.
	redChannel = rgbImage(:, :, 1);
	greenChannel = rgbImage(:, :, 2);
	blueChannel = rgbImage(:, :, 3);
	
% 	% Red image:
% 	subplot(1, 3, 2);
% 	%imshow(redChannel, []); % Display the image.
% 	
% 	% Green image:
% 	subplot(1, 3, 3);
% 	%imshow(greenChannel, []); % Display the image.
% 	
% 	% Blue image:
% 	subplot(1, 3, 4);
%     %imshow(blueChannel, []); % Display the image.
%     
    imgRED = redChannel;
    imgGREEN = greenChannel;
    imgBLUE = blueChannel;
	
end

	