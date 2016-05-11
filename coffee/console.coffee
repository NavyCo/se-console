cons = document.querySelectorAll ".se-container"
for con in cons
	sec = con.getElementsByClassName("se-console")[0]
	nec = "";for line in sec.innerHTML.split '\n'
		nec += line.replace /^\/\/(.*)$/g, "<span class=\"h-comment\">$1</span>"
		nec += "\n"
	sec.innerHTML = nec