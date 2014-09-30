%
% extracts nk data for individual materials from
% file
%

clear all

nmat = 0;

% open the big file and read over the references
bf = fopen('nk_Palik.dat', 'r');
for k=1:2755
    lin = fgetl(bf);
end

% outer loop

while 1
  
   % check if end of file
   if feof(bf)
      break
   end
   
   % read next line
   lin = fgetl(bf);
   
   % check if it's a new material
   if lin(1:2) == '#S'  % Yes !
     
      % close current material file
      if nmat > 0  
         fclose(mf);
      end
     
      % open next material file
      flds = str_flds(lin);
      fnam = [flds{3},'.nk'];
      fprintf('%s\n', fnam);
      mf = fopen(fnam, 'w');
      
   else
     
      % write line to material file
      if lin(1) == '#'
         lin(1) = ';';
      end
      fprintf(mf, '%s\n', lin);
      
   end
   
end

fclose(mf);
fclose(bf);
