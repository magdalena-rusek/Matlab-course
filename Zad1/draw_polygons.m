function draw_polygons(subplot, polygon, angle)
  for n=1:polygon
    figure(1); hold on;
    subplot(subplot,1,n);
    for p=1:polygon
      x=rand(2,angle)*10-20
      plot(x(1,[1:angle,1]),x(2,[1:angle,1]),'b-')
      hold on;
    end
  end
end
