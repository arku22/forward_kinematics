clc,clear all,close all;
t1=input('Enter theta 1(in degrees): ')
t2=input('Enter theta 2(in degrees): ')
t3=input('Enter theta 3(in degrees): ')
t4=input('Enter theta 4(in degrees): ')
t5=input('Enter theta 5(in degrees): ')
t6=input('Enter theta 6(in degrees): ')
[A1]=new_plot(t1+90,330,75,90)
[A2]=new_plot(t2+90,0,300,0)
[A3]=new_plot(t3,0,75,90)
[A4]=new_plot(t4,320,0,-90)
[A5]=new_plot(t5,0,0,90)
[A6]=new_plot(t6,80,0,0)
A1
A2
A3
A4
A5
A6
T=A1*A2*A3*A4*A5*A6
p0=[0,0,0,0]
p1=A1*[0;0;0;1];
p1=transpose(p1)
p2=A1*A2*[0;0;0;1];
p2=transpose(p2)
p3=A1*A2*A3*[0;0;0;1];
p3=transpose(p3)
p4=A1*A2*A3*A4*[0;0;0;1];
p4=transpose(p4)
p5=A1*A2*A3*A4*A5*[0;0;0;1];
p5=transpose(p5)
p6=A1*A2*A3*A4*A5*A6*[0;0;0;1];
p6=transpose(p6)


pts=[p0;p1];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p0(1),p0(2),p0(3),['  Joint 1: ' num2str(t1)])
hold on
pts=[p1;p2];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p1(1),p1(2),p1(3),['  Joint 2: ' num2str(t2)])
hold on
pts=[p2;p3];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p2(1),p2(2),p2(3),['  Joint 3: ' num2str(t3)])
hold on
pts=[p3;p4];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p3(1),p3(2),p3(3),['  Joint 4: ' num2str(t4)])
hold on
pts=[p4;p5];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p4(1),p4(2),p4(3),['  Joint 5,6: ' num2str(t5) '   '   num2str(t6)])
hold on
pts=[p5;p6];
plot3(pts(:,1),pts(:,2),pts(:,3),'-o','linewidth',2.5)
text(p6(1),p6(2),p6(3),'     End Effector')
hold on
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')





