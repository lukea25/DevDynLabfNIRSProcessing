
%Use Timelog create example function
%input desired date as string in single quotes
%and time as a string in single quotes WITH leading 0's
timelogCreate('06/17/2022', '01:45:40')
%Write results to csv with desired name format
%(this example is participant 129)
writecell(ans, 'timelog129Create.csv')


%Enter your desired date and time as correctly
%formatted strings in the outline below. 
%Then, highlight, right click, and evaluate selection 
% csv timelog will save to working directory
timelogCreate('date', 'time')
writecell(ans, 'fileName.csv')