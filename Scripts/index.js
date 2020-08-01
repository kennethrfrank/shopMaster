	

$(document).ready(function(){
	

	//produceListings();

	// $(".ui.modal").modal('show');
	var scrHeight = screen.height;
	$("body").css("height", ""+scrHeight + "px");
	$("#cartBtn").on("click", function(){
		$("#cartList").slideToggle();
	});
	


	


	function emailSlide(){
		$("#cUs").slideUp();
		setTimeout(function(){
			$("#email").slideDown();
		}, 1000);

		setTimeout(
			function(){
				$("#email").slideUp();
				setTimeout(function(){
					$("#cUs").slideDown();
				}, 1000);
			}
			, 10000);
	}

	//function produceListings(){
	//	for(var i=0; i<=5; i++){


	//		$("#shopJS").append(`
	//			<div class="four wide column c listParent">
	//									<div class="sixteen wide column listing merchandise">
	//										<h4 class="invTitle">FACE MASK</h4>
	//										<img class="invPic" src="~/Images/mask.jpg">
											
	//										<h4 class="invPrice">PRICE: $12</h4>
	//										<h4 class="invCat" style="display: none;">Category: Merchandise</h4>
	//										<a class="review">30 Reviews</a>:
	//										<div class="ui star rating"></div>
	//										<div class="ui positive basic button aTC"> ADD TO CART</div>
	//										<div class="ui button rTO"> RENT TO OWN</div>
	//									</div>
	//			</div>

	//				`);
	//	}



	//		$("#shopJS").append(`
	//			<div class="four wide column c listParent">
	//									<div class="sixteen wide column listing equipment">
	//										<h4 class="invTitle">MICROPHONE</h4>
	//										<img class="invPic" src="~/Images/mask.jpg">
											
	//										<h4 class="invPrice">PRICE: $222</h4>
	//										<h4 class="invCat" style="display: none;">Category: Equipment</h4>
	//										<a class="review">30 Reviews</a>:
	//										<div class="ui star rating"></div>
	//										<div class="ui positive basic button aTC"> ADD TO CART</div>
	//										<div class="ui button rTO"> RENT TO OWN</div>
	//									</div>
	//			</div>

	//				`);
	//}

	function shopSlide(){
		$("#topNav").slideToggle();
		$("#bigLogo").slideToggle();
		$("#uConstruction").slideToggle();
		$("#shopGrid").slideToggle();
		$("#bottomNav").slideToggle();
	}

	function initShopCategory(cat){

		console.log(cat);

		$(".listing").each(function(i){

			console.log("listing" + i);

			var activeCategory = $(this).hasClass(cat) && $("#"+cat).hasClass("activeShop");

			if(activeCategory){
				console.log("this listings category is active");
				var listing = this;
				setTimeout(function(){
					$(listing).parent().fadeIn();
				},1000);
			
			}else{
				console.log("notActive");
			}

		});
		
	}



	$("#shopBtn").on("click", function(){
		shopSlide();
		var m = "merchandise";
		var e = "equipment";
		var s = "software";
		var cats = [m,e,s];

		for(var i=0; i<=2; i++){
			console.log(cats[i]);
			if($("#"+cats[i]).hasClass("activeShop")){
				console.log(cats[i]+ " is ACTIVE");
				initShopCategory(cats[i]);
			}else{
				console.log(cats[i]+ " is not active");
			}
		}


	});
	$("#shopLogo").on("click", shopSlide);

	$('.rating').rating({
    	initialRating: 4,
    	maxRating: 5
  	});

	$("img#logo").on("click", function(){
		console.log("hello friend");
	});

	$("#cUs.cUs").on("click", function(){
		window.open('mailto:contactnclyne@gmail.com?subject=Web Inquiry');
		emailSlide();

	});


	$(".ui.button.shopFilter").on("click", function(){


		var cat = $(this).attr("id");


		if(!$(this).hasClass("activeShop")){
			$(this).addClass("activeShop");
			initShopCategory(cat);
		}else{
			$(this).removeClass("activeShop");
			$("."+cat).parent().fadeOut("slow");
		}
	
		
	});

	


	

	// $("#cUs.cUs").on("mouseover", function(){
	// 	console.log("hover");
	// 	$("#cUs").slideUp();
	// 	

	// });

	



});