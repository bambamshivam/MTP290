rev("Hello Amit Kant Pandit");
function []=rev(string)
    str=split(string," ");
    c=size(str,1);
    for i=1:size(str,1)
        fprintf(str(c)+" ");
        c=c-1;
    end
    fprintf('\n');
end