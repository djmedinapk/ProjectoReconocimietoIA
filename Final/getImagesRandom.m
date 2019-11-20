function [tp] = getImagesRandom(imagenesMuestra)
    if(~isdeployed)
        cd(fileparts(which(mfilename)));
    end
    imagesFolder = fileparts(which(mfilename));
    foldersImg = ["\imgs\banana\*.jpg", "\imgs\fresa\*.jpg","\imgs\naranja\*.jpg","\imgs\pera\*.jpg"];
    
    b = dir([imagesFolder, char(foldersImg(1))]);
    tp.t1 = b;
    c = [imagesFolder, char(foldersImg(2))];
    tp.t2 = dir(c);
    c = [imagesFolder, char(foldersImg(3))];
    tp.t3 = dir(c);
    c = [imagesFolder, char(foldersImg(4))];
    tp.t4 = dir(c);
%     v = setdiff(1:length(tp.t1), 0);
%     for(i=1:5)
%         bb(i) = v(randi(numel(v)));
%         v = setdiff(1:length(tp.t1), bb);
%     end
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