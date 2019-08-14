cells = importdata('cells.mat');
daycell=sum(sum(sum(cells(:,:,:,:))));
day=10;
for i=1:7
    fprintf('On day %d, no. of cells: %f \n', day, daycell(:,:,:,i));
    day=day+2;

end
       
     