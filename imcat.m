function [ out ] = imcat( dim, im1, im2 )
%IMCAT Summary of this function goes here
%   Detailed explanation goes here

    out = im1;
    id = max(size(out, dim), size(im2, dim));
    if (dim == 1)
        if (size(out, dim) < id)
            out(end+1:id, :, :) = nan;
        else
            im2(end+1:id, :, :) = nan;
        end;
        out = cat(2, out, im2);
    elseif (dim == 2)
        if (size(out, dim) < id)
            out(:, end+1:id, :) = nan;
        else
            im2(:, end+1:id, :) = nan;
        end;
        out = cat(1, out, im2);
    else
        error('??? dim can be only 1 or 2!');
    end;

end

