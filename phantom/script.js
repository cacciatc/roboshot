function renderURL(callback){
  var page   = require('webpage').create();
	var system = require('system');
 
	var url       = system.args[1];
	
	page.settings.userAgent = "Scrnshot";
	page.open(url, function(status){
		if(status !== "success"){
			console.log("Unable to render '"+url+"'");
		}
		else{
			page.render(system.args[2]);
		}
		delete page;
		callback();
	});
}
 
renderURL(function(){
	phantom.exit();
});

