%This incoperate two plots, drawing stock market and Covid-19 new cases together.
clear;

request_input = "To get a duration, please enter two days starting from 2020-01-22. For example, 0 and 5 mean from 2020-01-22 to 2020-01-27.";
disp(request_input);
x1 = input("The starting day: ");
x2 = input("The ending day: ");

%plot the stock marketing trend and plot the Covid-19 confirmed cases 
x = x1:1:x2;
plot(datetime(x+737812,'ConvertFrom', 'datenum', 'Format', 'yyyy-MM-dd'), get_stock_data(x), datetime(x+737812,'ConvertFrom', 'datenum', 'Format', 'yyyy-MM-dd'), get_confirmed_cases(x));
legend("stock market", "Covid-19 new positive cases");
title("market and Covid-19");
