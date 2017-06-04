function smth()
{
	var x = window.localStorage.getItem('aaa');   // x = localStorage['aaa']
	x = x*1 + 1;	// x = x + 1   // x * 1 to tranform string into integer
	window.localStorage.setItem('aaa', x); // localstorage['aaa'] = x
	alert(x);		
}


function add_to_cart(id)
{
	var hash_key = 'product_' + id;
	var x = window.localStorage.getItem(hash_key);
	x = x * 1 + 1
	window.localStorage.setItem(hash_key, x);
	alert('added product id' + id);
}

function checkout()
{
	var total = 0;
	for(var i=0; i < localStorage.length; i++)
	{
   	 var key = localStorage.key(i);
   	 var total = total*1 + localStorage[key]*1;
    }
     alert(total);
}
