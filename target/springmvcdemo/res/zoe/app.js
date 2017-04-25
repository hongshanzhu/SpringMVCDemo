define(function(require, exports, module) {

    var $ = require('jquery'),
    	zoe = require('zoe');

    var $galleryTab = $('#gallery_tab'),
   		$galleryPanel = $('#gallery_panel');

    zoe(function() {
    	var slider1 = zoe('gallery_slider-1'),
    		slider2 = zoe('gallery_slider-2'),
    		slider3 = zoe('gallery_slider-3');

    	zoe.use(['Menu', 'Panel'], function(Menu, Panel) {
    		var tab = new Menu({
	    			el : $galleryTab.get(0),
	    			init : 'gallery-1',
	    			hover : true
	    		}),

    			panel = new Panel({
    				el : $galleryPanel.get(0),
	    			init : 'gallery-1'
    			});

    		tab.render();
    		panel.render();

    		panel.binding(tab);

    		tab.on('update', function(tab) {
    			switch (tab) {
    				case 'gallery-1' :
    					slider1.active(true);
    					slider2.active(false);
    					slider3.active(false);

    					break;

    				case 'gallery-2' :
    					slider1.active(false);
    					slider2.active(true);
    					slider3.active(false);

    					break;

    				case 'gallery-3' :
    					slider1.active(false);
    					slider2.active(false);
    					slider3.active(true);

    					break;
    			}
    		})
    	});
    })

});