function readDSSP()
format compact;
format long;

filePath=mfilename('fullpath');
[scriptPath,fileName,fileExt]=fileparts(filePath);
cd(fileparts(filePath));

residue_max_acc.A=129.0;
residue_max_acc.R=274.0;
residue_max_acc.N=195.0;
residue_max_acc.D=193.0;
residue_max_acc.C=167.0;
residue_max_acc.Q=225.0;
residue_max_acc.E=223.0;
residue_max_acc.G=104.0;
residue_max_acc.H=224.0;
residue_max_acc.I=197.0;
residue_max_acc.L=201.0;
residue_max_acc.K=236.0;
residue_max_acc.M=224.0;
residue_max_acc.F=240.0;
residue_max_acc.P=159.0;
residue_max_acc.S=155.0;
residue_max_acc.T=172.0;
residue_max_acc.W=285.0;
residue_max_acc.Y=263.0;
residue_max_acc.V=174.0;

File.Input.name='1A2T_A.dssp';
File.Output.name='readDSSP_output.txt';

pdb_name=File.Input.name(1:6);

%open output file to write
File.Output.id=fopen(File.Output.name,'w');

%read input file 
File.Input.contents=fileread(File.Input.name);

%split contents
File.Input.Line=strsplit(File.Input.contents,'\n');

counter=0;
for i=26:(length(File.Input.Line)-1)
    row=File.Input.Line(i);
    if ~isempty(row)
        %class(row{1}(14))
        if ~strcmp(row{1}(14),'!')
            counter=counter+1;
            AA(counter)=row{1}(14);
            ACC(counter)=str2double(row{1}(36:38));
            RSA(counter)=ACC(counter)/residue_max_acc.(AA(counter));
        end
    end    
end

fprintf(File.Output.id,'pdb    \t name \t ACC \t RSA   \n');

for i=1:length(AA)
    fprintf(File.Output.id,'%6s \t %4s \t %3.0f \t %5.4f \n',pdb_name,AA(i),ACC(i),RSA(i));
end