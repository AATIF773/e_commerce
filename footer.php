<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-6 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>New Delhi-110025</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+91 7277505027</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>gyb1an2aj@gmail.com</a></li>
									<br>
									<br>
									<li><a href="#">Sell As A Seller</a></li>
								</ul>
							</div>
						</div>

						
						
						<div class="col-md-3 col-md-offset-3  col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Home</a></li>
									<li><a href="#">Cbse</a></li>
									<li><a href="#">Entrance Books</a></li>
									<li><a href="#">Comics</a></li>
									<li><a href="#">Novel</a></li>
									<li><a href="#">Higher Eductaion</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						
					</div>
					<!-- /row -->

					<!-- row -->
					<div class="row">
						<div class="col text-center" style="margin-top:0px;">
							
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
							
							</span>
						</div>
					</div>
					<!-- \row -->

				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->
                

			<!-- bottom footer -->
			
			<!-- /bottom footer -->
		</footer>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/actions.js"></script>
		<script src="js/sweetalert.min"></script>
		<script src="js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="js/script.js"></script>
		<script>var c = 0;
        function menu(){
          if(c % 2 == 0) {
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";    
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";    
            c++; 
              }else{
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";        
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";        
            c++;
              }
        }
           
		
</script>
    <script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>
	
