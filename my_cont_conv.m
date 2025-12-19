function [y, ty] = my_cont_conv(x, h, tx, th)
  dt = (tx(2)-tx(1));
  y = conv(x, h)*dt;
  ty = (tx(1) + th(1)):0.1:(tx(end) + th(end));
end
