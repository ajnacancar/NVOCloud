const expandBtns = document.querySelectorAll('.expand-button button');

expandBtns.forEach(btn => {
	let expanded = false;
	btn.addEventListener('click', e => {
		for (let i = 0; i < expandBtns.length; i++) {
			const nvo2 = expandBtns[i].parentElement.parentElement.parentElement;
			const basicInfo2 = nvo2.children[0];
			const expandNvoDetails2 = nvo2.children[1];

			expandNvoDetails2.className = "nvo-contracted-details";
			   basicInfo2.style.borderBottomLeftRadius = '30px';
			basicInfo2.style.borderBottomRightRadius = '30px';
			expanded = false;
		}
		const nvo = btn.parentElement.parentElement.parentElement;
		
		const basicInfo = nvo.children[0];
		const expandNvoDetails = nvo.children[1];


		if(!expanded){
			expandNvoDetails.className = "nvo-expanded-details";
	        basicInfo.style.borderBottomLeftRadius = '0px';
	        basicInfo.style.borderBottomRightRadius = '0px';
		}

		expanded = !expanded;
	});
});
