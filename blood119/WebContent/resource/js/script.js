$(".nav1>li").mouseover(
function(){
	$(this).children(".submenu").stop().slideDown();
});

$(".nav1>li").mouseleave(
function(){
	$(this).children(".submenu").stop().slideUp();
});

			function onlyNumber(event){
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
				return;
			else
				return false;
		}
		function removeChar(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
				return;
			else
				event.target.value = event.target.value.replace(/[^0-9]/g, "");
		}
		$(document).ready(function() {
		    var activeSystemClass = $('.list-group-item.active');

		    //something is entered in search form
		    $('#system-search').keyup( function() {
		       var that = this;
		        // affect all table rows on in systems table
		        var tableBody = $('.table-list-search tbody');
		        var tableRowsClass = $('.table-list-search tbody tr');
		        $('.search-sf').remove();
		        tableRowsClass.each( function(i, val) {
		        
		            //Lower text for case insensitive
		            var rowText = $(val).text().toLowerCase();
		            var inputText = $(that).val().toLowerCase();
		            if(inputText != '')
		            {
		                $('.search-query-sf').remove();
		                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
		                    + $(that).val()
		                    + '"</strong></td></tr>');
		            }
		            else
		            {
		                $('.search-query-sf').remove();
		            }

		            if( rowText.indexOf( inputText ) == -1 )
		            {
		                //hide rows
		                tableRowsClass.eq(i).hide();
		                
		            }
		            else
		            {
		                $('.search-sf').remove();
		                tableRowsClass.eq(i).show();
		            }
		        });
		        //all tr elements are hidden
		        if(tableRowsClass.children(':visible').length == 0)
		        {
		            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
		        }
		    });
		});
