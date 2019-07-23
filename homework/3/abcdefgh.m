q = {{'a', 'b', 'c'}, {'d', 'e', 'f'}, {'g', 'h'}};

for a=1:1:length(q)    
    for b=1:1:length(q{a})
    fprintf(q{a}{b})
    end    
end
fprintf('\n');


