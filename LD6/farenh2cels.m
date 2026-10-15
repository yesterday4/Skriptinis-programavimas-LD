function cels = farenh2cels(farenh)
    % FARENH2CELS converts temperature values from Fahrenheit to Celsius
    % cels = farenh2cels(farenh) uses the value in Fahrenheit from farenh
    % and converts it to Celsius in cels

    cels = 5 * (farenh - 32) / 9;
end
