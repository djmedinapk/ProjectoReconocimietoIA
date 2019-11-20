function [P inf] = getImagesVector(imagenesMuestra,tipo)
files = getImagesRandom(imagenesMuestra);
inf = files;

if tipo == 1
    P = ones(1200,(imagenesMuestra*4));
    count = 1;
    for(i=1:length(files.t1))
        fullFileName = fullfile(files.t1(i).folder, files.t1(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t2))
        fullFileName = fullfile(files.t2(i).folder, files.t2(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t3))
        fullFileName = fullfile(files.t3(i).folder, files.t3(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end

    for(i=1:length(files.t4))
        fullFileName = fullfile(files.t4(i).folder, files.t4(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [mean(imgR,2);mean(imgG,2);mean(imgB,2)];
        full2 = [mean(imgR);mean(imgG);mean(imgB)];
        full3 = [full2(:)]';
        training = vertcat(full3',full);
        P(:,count) = training;
        count = count + 1;
    end
else
    P = ones(120000,(imagenesMuestra*4));
    count = 1;
    for(i=1:length(files.t1))
        fullFileName = fullfile(files.t1(i).folder, files.t1(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [imgR;imgG;imgB];
        training = [full(:)]';
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t2))
        fullFileName = fullfile(files.t2(i).folder, files.t2(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [imgR;imgG;imgB];
        training = [full(:)]';
        P(:,count) = training;
        count = count + 1;
    end
    for(i=1:length(files.t3))
        fullFileName = fullfile(files.t3(i).folder, files.t3(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [imgR;imgG;imgB];
        training = [full(:)]';
        P(:,count) = training;
        count = count + 1;
    end

    for(i=1:length(files.t4))
        fullFileName = fullfile(files.t4(i).folder, files.t4(i).name);
        [imgR,imgG,imgB] = imgfiltros(fullFileName);
        full = [imgR;imgG;imgB];
        training = [full(:)]';
        P(:,count) = training;
        count = count + 1;
    end

end

end