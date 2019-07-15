a1 = 2;    %1st character must be a letter
a1 = 'b';   % b must be under ''
x = 2;
y = x + 4; % is it 6?   No. 'X' is not 'x'
disp(y)
pi = 4 * atan(1);   % unnecessary ';'
disp(pi)
pi = 3.14159;   % no need of quatation for numbers
disp(tan(pi));
c = 4^3^2^3;
d = ((c-78564)/c + 32);    % variable misssing and an extra ')'
year = 2017;
disp(['The year is ', num2str(year)]); % does it display 2017 correctly?  No. We have to convert the number to string before we can display. 
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1);   % indexing starts from 1 and not 0
End = stuff(5); % 'end' is an resereved keyword
discount = '12%';
AMOUNT = 120;   % unnecessary '._'
amount = '120$';   
and = 'duck';   % duck is not defined. So making duck a character 'duck'
%class = "INF1100, gr 2";    % syntax error: " instead of '
continue_ = x > 0;
fox = false;   % fox is not defined.
wolf = fox == true;
Persian = 'Persian is a human language';    % for vector of character type, in order to concanate the dimension shoud be 1
disp(Persian);
Spanish = {'Spanish ' 'is ' ' another'  'language'};   % an extra '}'
disp(Spanish);

disp([char(Persian(1:7)) ' is not the same as ' char(Spanish(1))]);    % we have to specify the range in a cell


