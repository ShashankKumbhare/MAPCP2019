%function csv2formatted(in,out)

filePath=mfilename('fullpath');
cd(fileparts(filePath));
%'data.in.txt','data.out'
File.Input.name='data.in.txt';
File.Output.name='data.out.txt';

%open output file to write
File.Output.id=fopen(File.Output.name,'w');

%read input file 
File.Input.contents=fileread(File.Input.name);

%split contents
File.Input.Line=strsplit(File.Input.contents,'\n');

for i=1:length(File.Input.Line)
    row(i)=File.Input.Line(i);    
    updatedString(i) = regexprep(row(i), ',', '\t');
end
%disp(updatedString(1))
%disp(updatedString(2))
%disp(updatedString(3))
%disp(updatedString(4))
for i=1:length(File.Input.Line)
    fprintf(File.Output.id,'%3s\n',updatedString{i});
end