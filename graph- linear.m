a=[1 2 4];
B=[2 3 7];

A=[ones(size(a))
    a
    a.^2];
b=B;
x=b*pinv(A);

f=@(a) x(1)+ x(2)*a+ x(3)*a.^2;

aa=linspace(0, 5, 100);
BB=f(aa);
figure;

plot(a,B,'or', 'MarkerSize', 12, 'DisplayName','Data points');
hold on;
plot(aa,BB, 'b', 'LineWidth',2,'DisplayName','fitted equation');
xlabel('a');
ylabel('B');
grid on;
legend show;
