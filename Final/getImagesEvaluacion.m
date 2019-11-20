function [P inf] = getImagesEvaluacion(imagenesMuestra)
files = getImagesRandomEvaluacion(imagenesMuestra);
inf = files;
    P = ones(1200,(imagenesMuestra*4));
    count = 1;
    for(i=1:length(files.t1))
        fullFileName = fullfile(files.t1(i).folder, files.t1(i).name);
        [imgR,imgG,imgB] = imgfiltrosEvaluacion(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t2))
        fullFileName = fullfile(files.t2(i).folder, files.t2(i).name);
        [imgR,imgG,imgB] = imgfiltrosEvaluacion(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t3))
        fullFileName = fullfile(files.t3(i).folder, files.t3(i).name);
        [imgR,imgG,imgB] = imgfiltrosEvaluacion(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end

    for(i=1:length(files.t4))
        fullFileName = fullfile(files.t4(i).folder, files.t4(i).name);
        [imgR,imgG,imgB] = imgfiltrosEvaluacion(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
end

function [tp] = getImagesRandomEvaluacion(imagenesMuestra)
    if(~isdeployed)
        cd(fileparts(which(mfilename)));
    end
    imagesFolder = fileparts(which(mfilename));
    foldersImg = ["\imgsAplicacion\banana\*.jpg", "\imgsAplicacion\fresa\*.jpg","\imgsAplicacion\naranja\*.jpg","\imgsAplicacion\pera\*.jpg"];
    
    b = dir([imagesFolder, char(foldersImg(1))]);
    tp.t1 = b;
    c = [imagesFolder, char(foldersImg(2))];
    tp.t2 = dir(c);
    c = [imagesFolder, char(foldersImg(3))];
    tp.t3 = dir(c);
    c = [imagesFolder, char(foldersImg(4))];
    tp.t4 = dir(c);
    bb = getRandoms(length(tp.t1),imagenesMuestra);
    tp.t1 = tp.t1(bb);
    
    bb = getRandoms(length(tp.t2),imagenesMuestra);
    tp.t2 = tp.t2(bb);
    
    bb = getRandoms(length(tp.t3),imagenesMuestra);
    tp.t3 = tp.t3(bb);
    
    bb = getRandoms(length(tp.t4),imagenesMuestra);
    tp.t4 = tp.t4(bb);
    
end

function bb = getRandoms(longitud,imagenesMuestra)
    v = setdiff(1:longitud, 0);
    for(i=1:imagenesMuestra)
            bb(i) = v(randi(numel(v)));
            v = setdiff(1:longitud, bb);
        end
end

   
function [imgRED,imgGREEN,imgBLUE] = imgfiltrosEvaluacion(img)
%      fff= figure;
%     figure(fff);
    rgbImage = imread(img);
%     subplot(1, 4, 1);
%  	imshow(rgbImage);
    
    rgbImage = imresize(rgbImage,[200 200]); 
    
    imgRGB = rgbImage;
    % Extract the individual red, green, and blue color channels.
	redChannel = rgbImage(:, :, 1);
	greenChannel = rgbImage(:, :, 2);
	blueChannel = rgbImage(:, :, 3);
    
	allBlack = zeros(size(rgbImage, 1), size(rgbImage, 2), 'uint8');
    
    just_red = cat(3, redChannel, allBlack, allBlack);
    just_green = cat(3, allBlack, greenChannel, allBlack);
    just_blue = cat(3, allBlack, allBlack, blueChannel);

   
% 	% Red image:
% 	subplot(1, 4, 2);
% 	imshow(just_red); % Display the image.
% 	
% 	% Green image:
% 	subplot(1, 4, 3);
% 	imshow(just_green); % Display the image.
% 	
% 	% Blue image:
% 	subplot(1, 4, 4);
%     imshow(just_green); % Display the image.
    
    imgRED = redChannel;
    imgGREEN = greenChannel;
    imgBLUE = blueChannel;
	
end