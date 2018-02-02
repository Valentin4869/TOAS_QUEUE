%close all
% TODO: Generalize and clean-up

junk=[45;46;43;43;43;42;41;35;35;32;32;30;30;28;28;28;28];
% j31  f1  f2
q=[50;48;48];



months={"February","March","April","May","June","July","August","September","October","November"};
month="February";
first_date=31;

plot(q)
ylim([0,q(1)])


hold on

N=1;

for p=1:N
    
x=0:1000;
%y=mean(diff(q((p-1)*(floor(size(diff(q),1)/N))+1:p*(floor(size(diff(q),1)/N))))).*x + 50;
y=mean(diff(q)).*x + 50;
%y=mean(diff(q(1:p*(floor(size(diff(q),1)/N))))).*x + 50;
plot(x,y)


end

yC=y((y>=0));

%first remove January 31st
yC=yC((31-first_date+1+1:end));
%remove feb
if size(yC,2)>28
yC=yC(28+1:end);
month="March";
end

%remove March
if size(yC,2)>31
yC=yC(31:end);
month="April";
end

%remove April
if size(yC,2)>30
yC=yC(30:end);
month="May";
end

%remove May
if size(yC,2)>31
yC=yC(31:end);
month="June";
end

%remove June
if size(yC,2)>30
yC=yC(30:end);
month="July";
end

%remove July
if size(yC,2)>31
yC=yC(31:end);
month="August";
end

%remove August
if size(yC,2)>31
yC=yC(31:end);
month="September";
end

fprintf(strcat("\n",month," ",num2str(size(yC,2)),"\n"))
