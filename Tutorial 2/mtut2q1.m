% What is the following code expected to do?

t = 0:.01:2*pi;
plot(2*sin(t)+10,2*cos(t)-2);
axis('square'); 

% Does the above code perform its expected task in GNU Octave?
% Does the code perform its expected task in Matlab?

% Which of the following print commands renders the output 
% of the above code to what the code is expected to render? 

print -depsc figure.eps
print -dpdf figure.pdf
print -djpg figure.jpg
print -djpeg figure.jpeg
print -dgif figure.gif
print -dpng figure.png

% On an examination, which of the above print commands will
% you prefer if you need to e-mail us the figure?



