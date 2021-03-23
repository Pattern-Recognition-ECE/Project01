%������� �
disp("Question a")
A = [1 1 1 ; 2 2 2 ; 1 1 1];
disp("A Matrix")
disp(A)

B = [2 23 1; 4 6 3; 6 -26 5];
disp("B Matrix")
disp(B)

E = (A * B' ) * A' + B - A * B;
disp("E Matrix")
disp(E)

F = (A .* B) + 3 * B;
disp("F Matrix")
disp(F)

A = [1 2 3 -9 5 6;
     2 2 3 5 2 7;
     1 4 1 3 1 1];
 disp("New A matrix")
 disp(A)
 
 B = (A'*A)\A';
 disp("Pseudo-inverted A matrix")
 disp(B)
 
 %������� �
 disp("Question b")
 disp("A")
 A = [5 -2 3 -1;
      1  2 -3 0;
      -3  1 0 -2;
      4 3 -1 5];
  disp(A)
  
  disp("b")
  b = [6 9 -1 -7]';
  disp(b)
  
  X = A \ b ;
  disp("Solution")
  disp(X)
  
  %������� �
  t = 0:0.01:1;
  f = tan(1+exp(t.^2));
  g = t.^3 + sin(t.^2) + 5;
  f1 = figure('NumberTitle', 'off', 'Name', '������� �');
  
  subplot(2, 1, 1);
  plot(t, f)
  title("F")
  grid("on")
  subplot(2, 1, 2);
  plot(t, g)
  title("G")
  grid("on")
  
  %������� �
  file = fopen('data.dat','r');
  [Data,COUNT] = fscanf ( file,'%d', [2 Inf]);  
  disp(Data)
  
  %���������� 1
  Data = Data';  
  Data = reshape(Data,5,8);
  Data = Data(:, [1,5,2,6,3,7,4,8]); 
  fclose(file);
  disp(Data)
  disp(COUNT)
  
  %���������� 2
  f2 = figure('NumberTitle', 'off', 'Name', '������� �2 �� ������� ���������');
  subplot(4, 1, 1);  
  scatter(Data(1:5, 1), Data(1:5, 2))
  title("������� 1")
  grid("on")
  
  subplot(4, 1, 2);  
  scatter(Data(1:5, 3), Data(1:5, 4))
  title("������� 2")
  grid("on")
  
  subplot(4, 1, 3);  
  scatter(Data(1:5, 5), Data(1:5, 6))
  title("������� 3")
  grid("on")
  
  subplot(4, 1, 4);  
  scatter(Data(1:5, 7), Data(1:5, 8))
  title("������� 4")
  grid("on")
  
  %���������� 3 
  f3 = figure('NumberTitle', 'off', 'Name', '������� �3 �� ������� ����');
  plot(Data(1:5, 1), Data(1:5, 2), Data(1:5, 3), Data(1:5, 4), ...
  Data(1:5, 5), Data(1:5, 6), Data(1:5, 7), Data(1:5, 8), 'linestyle','none','marker','o')
  grid("on")
  
  %���������� 4 
  f4 = figure('NumberTitle', 'off', 'Name', '������� �4 �� ������� ��� ���');
  subplot(3, 2, 1);
  plot(Data(1:5, 1), Data(1:5, 2), Data(1:5, 3), Data(1:5, 4), 'linestyle','none','marker','o')
  title("������� 1 �� ������� 2")
  grid("on")
  
  subplot(3, 2, 2);
  plot(Data(1:5, 1), Data(1:5, 2), Data(1:5, 5), Data(1:5, 6), 'linestyle','none','marker','o')
  title("������� 1 �� ������� 3")
  grid("on")
  
  subplot(3, 2, 3);
  plot(Data(1:5, 1), Data(1:5, 2), Data(1:5, 7), Data(1:5, 8), 'linestyle','none','marker','o')
  title("������� 1 �� ������� 4")
  grid("on")
  
  subplot(3, 2, 4);
  plot(Data(1:5, 3), Data(1:5, 4), Data(1:5, 5), Data(1:5, 6), 'linestyle','none','marker','o')
  title("������� 2 �� ������� 3")
  grid("on")
  
  subplot(3, 2, 5);
  plot(Data(1:5, 3), Data(1:5, 4), Data(1:5, 7), Data(1:5, 8), 'linestyle','none','marker','o')
  title("������� 2 �� ������� 4")
  grid("on")
  
  subplot(3, 2, 6);
  plot(Data(1:5, 5), Data(1:5, 6), Data(1:5, 7), Data(1:5, 8), 'linestyle','none','marker','o')
  title("������� 3 �� ������� 4")
  grid("on")
  
  
  

      
 