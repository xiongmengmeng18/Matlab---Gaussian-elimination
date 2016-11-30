function y=solvegauss(Matrix, SolutionsVector)
n=size(Matrix);
suma=0;
a=0;
for i=n(1):-1:1
   for j=n(2):-1:1
        if ( j~=i)  
        suma=suma+Matrix(i,j);
        end
        if (j==1)
            x(i)=SolutionsVector(i)-suma;
            suma=0;
            Matrix(:,n(2)-a)=Matrix(:,n(2)-a)*x(i);
            a=a+1;
        end
   end
end
%Matrix
%SolutionsVector
x     %% tu wychodzi wynik