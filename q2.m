folder='dataset';
files = dir(fullfile(folder, '*.jpg'));
X=[];
for i = 1:numel(files),
    f=fullfile(folder, files(i).name);
    im=double(imread(f));
    X=[X;(im(:))'];
end
[U1, vals]=eig(X*X');
U=X'*U1;
k=35;
X_red=X*U(:,1:k);
X_rec=X_red*U(:,1:k)';

X_red1=X*U(:,1);
Y=zeros(size(X_red1));
scatter(X_red1, Y);

X_red2=X*U(:,1:2);
scatter(X_red2(:,1), X_red2(:,2));

X_red3=X*U(:,1:3);
scatter3(X_red3(:,1), X_red3(:,2),  X_red3(:,3));