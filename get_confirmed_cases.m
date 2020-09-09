function output = get_confirmed_cases(days)
    %days from 2020-01-22. 
    %For example, 0 day means 2020-01-22
    %and 1 day means 2020-01-23.
    data = csvread("national-history.csv", 1, 1);
    if any(days<0) || any(days>157)
        output = "days out of range.";
        return;
    end
    output = data(end-days, 14);
end