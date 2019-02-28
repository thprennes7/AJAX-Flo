var mailsbutton = document.getElementsByClassName("shortmail");
consol.log(mailsbutton)

for(let x = 0; x < mailsbutton.lenght; x++){
	mailsbutton[x].addEventListener(function() {
		document.getElementById("col-right").inserAdjacentHTML("beforeend","<%= render 'mailpage', locals = {mail: @all_mails[" + x + "]} %>")
	})
}