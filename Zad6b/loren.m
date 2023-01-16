function dy = loren(t,y)
  sigma = 10;
  r = 99.96;
  b = 8/3;
  dy =[sigma*(y(2)-y(1));
  -y(1)*y(3)+r*y(1)-y(2);
  y(1)*y(2)-b*y(3)];
end
