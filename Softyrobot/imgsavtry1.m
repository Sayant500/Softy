cam = webcam('HD Pro Webcam C920');
cam.Resolution = '800x600';
res = 0.1;
iter1 = 1;
for i = 1:10
   % Acquire a single image.
   I = snapshot(cam);
   name = 'C:\Users\sayan\OneDrive - Worcester Polytechnic Institute (wpi.edu)\New Study Material\DR - Soft Vision\Matlab code\Controlvelm2web';
   imgname = append(name,'\vid1\','img',int2str(iter1),'.jpg');
   imwrite(I, imgname);
   c = clock;
   [id,loc] = readAprilTag(I,"tag36h11");
   idx = find(id==0);
   if length(idx)==1
       pos = (loc(1,:,idx)+loc(2,:,idx)+ loc(3,:,idx)+ loc(4,:,idx))/4;
       pixely = 800 - pos(1);
       pixelx = pos(2);
       theta1 = atand(-(loc(3,1,idx) - loc(1,1,idx))/(loc(3,2,idx)-loc(1,2,idx)));
       theta2 = atand((loc(4,1,idx) - loc(2,1,idx))/(loc(4,2,idx)-loc(2,2,idx)));
       angle = 90+(theta2 - theta1)/2;
       disp(angle);
       % Angle calculation okay in range(45,135).

%        A = [pixelx,pixely, angle];
%        disp(A);

       disp("Initialize Success");
       save('initval.mat', 'res', 'angle', 'pixelx', 'pixely');
       markerRadius = 8;
       numCorners = size(loc,1);
       markerPosition = [loc(:,:,idx),repmat(markerRadius,numCorners,1)];
       I = insertShape(I,"FilledCircle",markerPosition,"Color","green","Opacity",1);
       I = insertShape(I,"Line",[loc(1,:,idx),loc(2,:,idx), loc(3,:,idx), loc(4,:,idx), loc(1,:,idx)], ...
       "Color",["blue"],"LineWidth",2);
   else
       disp("Initialize Fail");
   end
   imshow(I);
   iter1 = iter1 + 1;
end


clear('cam');