function figure_windowbuttonmotionfcn_demo

  f = figure;
  ax = gca ();
  title ('Left-click to start drawing patch contour. Right-click to finish. Middle-click to cancel');
  axis ([0 1 0 1]);
  set (f, 'WindowButtonDownFcn', {@onButtonDown, ax});
  set (ax, 'UserData', []);

end

function onButtonDown (f, evt, ax)

  pt = get (ax, 'CurrentPoint');
  pt = pt(1,1:2);

  ud = get (ax, 'UserData');

  st = get (f, 'SelectionType');
  if (strcmp (st, 'normal'))
    l = line ([pt(1), pt(1)], [pt(2), pt(2)], 'LineWidth', 1, 'Color', 'b');
    ud = [ud, l];
    set (ax, 'UserData', ud);
    set (f, 'WindowButtonMotionFcn', {@onButtonMotion, ax, pt, l});
  elseif (strcmp (st, 'extend') || strcmp (st, 'alt'))
    set (f, 'WindowButtonMotionFcn', []);
    set (ax, 'UserData', []);
    if (strcmp (st, 'alt'))
      n = length (ud);
      x = zeros (1, n + 1);
      y = zeros (1, n + 1);
      for i = 1 : n
        xd = get (ud(i), 'XData');
        x(i:i+1) = xd;
        yd = get (ud(i), 'YData');
        y(i:i+1) = yd;
      end
      patch (x, y, 'r', 'EdgeColor', 'none');
    end
    delete (ud);
  end

end

function onButtonMotion (f, evt, ax, p1, l)

  p2 = get (ax, 'CurrentPoint');
  p2 = p2(1,1:2);

  set (l, 'XData', [p1(1), p2(1)], 'YData', [p1(2), p2(2)]);
  drawnow;

end
