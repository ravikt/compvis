%% Non maximum supression

function [output] = nonmaxsupress(g, theta)

[m,n]=size(g);
output=zeros(m,n);

for i=2:m-1
   for j=2:n-1
       switch theta(i,j)
           case 0
               if (g(i,j) > g(i-1,j)) && ((g(i,j) > g(i+1,j)))
                   output(i,j)=g(i,j);
               end
           case 45
               if (g(i,j) > g(i-1,j-1)) && ((g(i,j) > g(i+1,j+1)))
                   output(i,j)=g(i,j);
               end
           case 90
               if (g(i,j) > g(i,j+1)) && ((g(i,j) > g(i,j-1)))
                   output(i,j)=g(i,j);
               end
           case 135
               if (g(i,j) > g(i-1,j+1)) && ((g(i,j) > g(i+1,j-1)))
                   output(i,j)=g(i,j);
               end
       end
   end
end
imshow(output,[])
end
