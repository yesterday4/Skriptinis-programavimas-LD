function [varargout] = grafsincos(x, varargin)

a = sin(x);
b = cos(x);

if nargin<2
    figure;
    subplot(2, 1, 1);
    plot(x, a)
    subplot(2, 1, 2);
    plot(x, b)
elseif nargin>=2
    varargout{1} = a;
    varargout{2} = b;
end
