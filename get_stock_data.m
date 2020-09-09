function output = get_stock_data(days)
    %days from 2020-01-22. For example, 0 day means 2020-01-22
    %and 1 day means 2020-01-23.
    data = csvread("^DJI.csv", 1, 1);
    if any(days<0) || any(days>157)
        output = "days out of range.";
        return;
    end
    output = data(days+1, 5);
end

