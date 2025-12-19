%% Question 2-1
xn = ones(1,4);
nx = 1:1:4;

figure;
stem(nx,xn,"filled",'k-','LineWidth',2);
title('IS: Stem Plot of x[n]');
xlabel('n');
ylabel('x[n]');
grid on;

%% Question 2-2
hn = ones(1,5);
nh = 1:1:5;

figure; 
stem(hn,nh,'filled','k-','LineWidth',2);
title('IS: Stem Plot of h[n]');
xlabel('n'); 
ylabel('h[n]');
grid on;

%% Question 2-3
x = ones(1,4);
h = ones(1,5);

y = conv(h, x);
nume = length(y);
disp('Number of Elements in y:');
disp(nume);

%% Question 2-6
x = ones(1,4);
h = ones(1,5);

y = conv(x, h);
ny = 0:length(y)-1;

figure;
stem(ny, y, 'filled', 'k-', 'LineWidth', 2);
title('IS: Plot of n vs. y');
xlabel('n');
ylabel('y[n]');
grid on;


%% Question 2-7
x = ones(1,5);
h = ones(1,4);

nx = 1:1:4;
nh = 1:1:5;

[y, ny] = my_discr_conv(x, h, nx, nh);

figure;
stem(ny, y, 'filled', 'k-', 'LineWidth', 2);
title('IS: Plot of n vs. y');
xlabel('n');
ylabel('y[n]');
grid on;

%% Question 2-8
x = [-2,-1,1,2];
h = [-1,-1,2,1];

nx = -1:1:2;
nh = 0:1:3;

[y, ny] = my_discr_conv(x, h, nx, nh);

figure;
stem(ny, y,'filled', 'k-', 'LineWidth', 2);
title('IS: Plot of x[n]*h[n]=y[n]');
xlabel('n');
ylabel('y[n]');


%% Question 4-1 
t = -2:0.1:8;

xt = my_unit_step(t, 1) - my_unit_step(t, 4);

figure; 
plot(t, xt,'k-','LineWidth',2);
grid on;
box on;
xlabel('t'); 
ylabel('x(t)');
title('IS: x(t)');

%% Question 4-2
ht = my_unit_step(t, 1) - my_unit_step(t, 5);

figure; 
plot(t, ht,'k-','LineWidth',2);
grid on;
box on;
xlabel('t'); 
ylabel('h(t)');
title('IS: h(t)');

%% Question 4-4
y = conv(xt,ht);
tx = -4:0.1:16;

figure;
plot(tx, y, 'k-','LineWidth',2);
title('IS: Plot of y vs. t');
xlabel('t');
ylabel('y(t)');
grid on;

%% Question 4-5
[y, ty] = my_cont_conv(x, h, tx, th);

figure;
plot(ty, y, 'k-','LineWidth',2);
title('IS: Plot of y vs, t');
xlabel('t');
ylabel('y(t)');
grid on;

%% Question 4-6
tx = 0.4:0.1:2;
th = 0:0.1:6;

x = my_unit_step(tx,2) - my_unit_step(tx,4);
h = my_unit_step(th,0) - my_unit_step(th,6);

[y, ty] = my_cont_conv(x, h, tx, th);

figure;
plot(ty, y, 'k-', 'LineWidth', 2);
title('IS: Plot of y(t) with signals from part 3');
xlabel('t');
ylabel('y(t)');
grid on;
