function cl
	pdflatex (ls -t *.tex |head -n 1) $argv; 
end
