function y=odwracaniemacierzy(Matrix)
Matrix
n=size(Matrix);
for i=1:n(1)
    for j=1:n(2)
        if i==j
        Matrix2(i,j)=1;
        end
    end
end

for i=1:n(1)
    for j=1:n(2)
        if(j==1)
            FirstOne=Matrix(i,i);
            if (FirstOne~=0)
            else            %%%ten else jest dla pdkt b) i c)
                Matrix=Gauss_czesciowywybor(Matrix,i)    %%tu jest pdkt b)
                %[Matrix,SolutionsVector]=Gauss_pelnywywybor(Matrix,i,SolutionsVector);  %% a tu c)
                FirstOne=Matrix(i,i);

            end
        end
        Matrix(i,j)=Matrix(i,j)/FirstOne;
        Matrix2(i,j)=Matrix2(i,j)/FirstOne;

    end
    if(i<n(1))
        for a=1:i
            Matrix2(i+1,:)=Matrix2(i+1,:)-Matrix2(a,:)*Matrix(i+1,a);
            Matrix(i+1,:)=Matrix(i+1,:)-Matrix(a,:)*Matrix(i+1,a);
            
        end
        
    end
end

for i=1:n(1)-1
    for a=1+i:length(Matrix(1,:))
        Matrix2(i,:)=Matrix2(i,:)-Matrix2(a,:)*Matrix(i,a);
        Matrix(i,:)=Matrix(i,:)-Matrix(a,:)*Matrix(i,a);

    end
end
Matrix;
Matrix2
w=det(Matrix2)