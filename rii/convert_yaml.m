%
% Converts the RII files in yaml format into flat files
% or functions that can be used by the tftb toolbox.
% This script uses the matyaml toolbox which, in turn
% is based on libyaml.

% Ulf Griesmann, September 2014

clear all

% directory for output files
odir = pwd;

% get all directories in 'main'
cd main;
mlist = dir;
mnam = {mlist(:).name};
mnam = mnam(3:end);  % skip . and ..

% loop over directories with materials
for n = 1:length(mnam)

     fprintf('Processing material: %s\n', mnam{n});
     
     % go to directory with material data
     cdcmd = ['cd ', odir, '/main/', mnam{n}];
     eval(cdcmd);
     
     % list of data file names
     dlist = dir;
     dnam = {dlist(:).name};
     dnam = dnam(3:end); % skip . and ..
     
     for k = 1:length(dnam)
     
         fprintf('... data: %s ', dnam{k});
         
         % load yaml file
         D = yaml_file_load(dnam{k});
     
         for m = 1:length(D.DATA)
           
            % type of data
            dtype = D.DATA{m}.type;
            
            % formula
            %%%%%%%%%
            
            if strcmp(dtype(1:7),'formula')
               
                fprintf('(f)\n');
                
                % extract formula number
                [dummy, model] = strread(dtype, '%s%d'); % formula number
               
                % open file
                funcnam = sprintf('n_%s_%s', mnam{n}, dnam{k}(1:end-4));
                onam = sprintf('%s/%s.m', odir, funcnam);
                fh = fopen(onam, 'w');
                
                % write function file
                fprintf(fh, 'function [nk] = %s(lambda)\n', funcnam);
                fprintf(fh, '%%function [nk] = %s(lambda)\n%%\n', funcnam);
                if isfield(D, 'REFERENCES')
                   fprintf(fh, '%% %s\n%%\n', D.REFERENCES);
                end
                if isfield(D, 'COMMENTS')
                   fprintf(fh, '%% %s\n%%\n', D.COMMENTS);
                end
                fprintf(fh, '%% INPUT\n'); 
                fprintf(fh, '%% lambda :  vector with wavelengths in micrometer\n%%\n');
                fprintf(fh, '%% OUTPUT\n');
                fprintf(fh, '%% nk :      column vector with refractive index at lambda\n%%\n');
                fprintf(fh, '%% Converted from refractiveindex.info database file.\n%%\n');
                fprintf(fh, '    range = [%s];\n', D.DATA{m}.range);
                fprintf(fh, '    coeff = [%s];\n', D.DATA{m}.coefficients);
                fprintf(fh, '    nk = n_rii(lambda, coeff, range, %d);\n', model);
                fprintf(fh, 'end\n');
                
                % close file
                fclose(fh);
               
            end
            
            % tabulated data
            %%%%%%%%%%%%%%%%
            
            if strcmp(dtype(1:9),'tabulated')

                fprintf('(t)\n');

                % open output file
                onam = sprintf('%s/%s_%s.nk', odir, mnam{n}, dnam{k}(1:end-4));
                fh = fopen(onam, 'w');
                
                % write header section
                fprintf(fh, '; Refractive index spectrum for %s by %s\n;\n', ...
                        mnam{n}, dnam{k}(1:end-4));
                if isfield(D, 'REFERENCES')
                   fprintf(fh, '; %s\n;\n', D.REFERENCES);
                end
                if isfield(D, 'COMMENTS')
                   fprintf(fh, '; %s\n;\n', D.COMMENTS);
                end
                fprintf(fh, '; lambda/um    n     k\n'); 
            
                % write data
                if strcmp(dtype(end-1:end), 'nk')
                   fprintf(fh, '%s', D.DATA{m}.data);
                elseif dtype(end)=='n'
                   s = strread(D.DATA{m}.data, '%s', 'delimiter','\n');
                   for l=1:length(s)
                      fprintf(fh, '%s  0.0\n', s{l});
                   end
                end
                
                % close file
                fclose(fh);
            
            end
           
         end
         
     end

end


