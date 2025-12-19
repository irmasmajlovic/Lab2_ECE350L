function y = my_unit_step(t,mu)
y(t>=mu) = 1;
y(t<mu) = 0;
end
