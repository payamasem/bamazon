var mysql = require('mysql');
var prompt = require('prompt');
var Table = require('cli-table');
var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'bamazon', 
});

var productPurchased = [];

connection.connect();


connection.query('SELECT item_id, product_name, price FROM products', function(err, result){
	if(err) console.log(err);

	

	var table = new Table({
		head: ['Item Id#', 'Product Name', 'Price'],
	});



	for(var i = 0; i < result.length; i++){
		table.push(
			[result[i].item_id, result[i].product_name, result[i].price]
		);
	}
	console.log(table.toString());

	purchase();
});







var purchase = function(){


	var productInfo = {
		properties: {
			item_id:{description: ('Please enter the Item ID of the product you want to purchase!')},
			Quantity:{description: ('How many would you like to purchase?')}
		},
	};

	prompt.start();



	prompt.get(productInfo, function(err, res){


		var custPurchase = {
			item_id: res.item_id,
			Quantity: res.Quantity
		};


		productPurchased.push(custPurchase);


		connection.query('SELECT * FROM Products WHERE item_id=?', productPurchased[0].item_id, function(err, res){
				if(err) console.log(err, 'That item ID doesn\'t exist');


				if(res[0].stock_quantity < productPurchased[0].Quantity){
					console.log('That product is out of stock!');
					connection.end();

				
				} else if(res[0].stock_quantity >= productPurchased[0].Quantity){

					console.log('');

					console.log(productPurchased[0].Quantity + ' items purchased');

					console.log(res[0].product_name + ' ' + res[0].price);

					
					var saleTotal = res[0].price * productPurchased[0].Quantity;

					
					connection.query("UPDATE Products SET stock_quantity = ? WHERE department_name = ?;", [saleTotal, res[0].item_name], function(err, resultOne){
						if(err) console.log('error: ' + err);
						return resultOne;
					})

					console.log('Total: ' + saleTotal);

					
					newQuantity = res[0].stock_quantity - productPurchased[0].Quantity;
			
					
					connection.query("UPDATE Products SET stock_quantity = " + newQuantity +" WHERE item_id = " + productPurchased[0].item_id, function(err, res){
						console.log('');
						console.log('Your order is now complete. Your total is posted above. Thank you for shopping with Bamazon!');
						console.log('');

						connection.end();
					})

				};

		})
	})

};

