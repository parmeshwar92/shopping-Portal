$(function(){
//solving the active menu problem
	switch(menu){


	case 'about us':
		$('#about').addClass('active');
		break;
	case 'view Product':
		$('#listProducts').addClass('active');
		break;
	case 'contact us':
		$('#contact').addClass('active');
		break
	default:
		$('#home').addClass('active');
		break;
	}

});