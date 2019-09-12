<template>
	<div class="bottom">
		<div class="footer_div1">
			<div class="footer_div1_div">
				<div class="footer_div1_div_div">
					<div class="footer_div1_div_div_div1">
						<img src="../../assets/aea226a9be6fddee.jpg" alt="">
					</div>
					<div class="footer_div1_div_div_div2">
						<div class="footer_div1_div_div_div2_div1"></div>
						<div class="footer_div1_div_div_div2_div2">
							<div class="footer_div1_div_div_div2_div2_div1"></div>
							<div class="footer_div1_div_div_div2_div2_div2"></div>
							<div class="footer_div1_div_div_div2_div2_div3"></div>
						</div>
					</div>
					<div class="footer_div1_div_div_div3">
						<div class="footer_div1_div_div_div3_div1"></div>
						<div class="footer_div1_div_div_div3_div2">
							<div class="footer_div1_div_div_div3_div2_div1"></div>
							<div class="footer_div1_div_div_div3_div2_div2"></div>
							<div class="footer_div1_div_div_div3_div2_div3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_div2">
			<div class="footer_div2_div1">
				<div class="footer_div2_div1_div1" >
						<img src="../../assets/new_fotomen_logo2(1).png" alt="">
						<div>
							<p>它是［摄影之友］的今生，是”摄影之友”的未来。</p>
							<p>是摄影历史资料馆，是摄影技艺集散地。<br>
								是摄影新锐训练场，是摄影大师集中营。 <br>是摄影潮流娱乐圈，是最具价值影像网站。</p>
							<p>只要你热爱生活，一定能在这里找到“真爱”。 然后一起，Photo your life！</p>
						</div>
						<a>了解更多</a>
				</div>
				<div class="footer_div2_div1_div2">
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>
						<a href="#">#1</a>			
				</div>
				<div class="footer_div2_div1_div3">
					23
				</div>
			</div>
			<div class="footer_div2_div2">
				<div class="footer_div2_div2_div">
					31
				</div>
			</div>
		</div>
	</div>
</template>
<script>
export default {
	
}
</script>
<style  lang="scss" scoped>
  .bottom{
		margin: 0;
		background: #111111;
		font-family: Monaco,"Lucida Sans Typewriter","Lucida Typewriter","Courier New",Courier,monospace;
    font-size: 16px;
    font-weight: 400;
    font-style: normal; 
		letter-spacing: 0;
		line-height: 1.5;
		text-align: left;
	}
	/*超大屏幕下iframe的高度*/
	@media (min-width: 1200px) {
		.footer_div1_div{
			width: 780px;
			height:  90px;
  		margin: 0 auto;
		}
		.footer_div2{
			max-width: 1080px;
		}
		.footer_div2_div1{
			display: flex;
			justify-content:space-between;
		}
		.footer_div2_div1_div1{
			width: 33.33333%;
		}
		.footer_div2_div1_div2{
			width: 33.33333%;
			display: flex;
			height: 100px;
			flex-wrap: wrap;
		}
		.footer_div2_div1_div3{
			width: 33.33333%;
		}
	}
	/*大屏幕下iframe的高度*/
	@media (max-width: 1199px) and (min-width: 992px) {
		.footer_div1_div{
			width: 780px;
			height:  90px;
  		margin: 0 auto;
		}
		.footer_div2{
			max-width: 1000px;
		}
		.footer_div2_div1{
			display: flex;
			justify-content:space-between;
		}
		.footer_div2_div1_div1{
			width: 33.33333%;
		}
		.footer_div2_div1_div2{
			width: 33.33333%;
			display: flex;
			height: 100px;
			flex-wrap: wrap;
		}
		.footer_div2_div1_div3{
			width: 33.33333%;
		}
	}
	/*中屏幕下iframe的高度*/
	@media (max-width: 991px) and (min-width: 768px){
		.footer_div1_div{
			width: 780px;
			height:  90px;
  		margin: 0 auto;
		}
		.footer_div2{
			max-width: 720px;
		}
		.footer_div2_div1_div1{
			width: 100%;
		}
		.footer_div2_div1_div2{
			width: 100%;
			display: flex;
			height: 100px;
			flex-wrap: wrap;
			border-bottom: 1px solid #232323;
		}
		.footer_div2_div1_div3{
			width: 100%;
		}
	}
	/*小屏幕下iframe的高度*/
	@media (max-width: 767px) {
		.footer_div1{
			display: none;
		}
		.footer_div2_div1_div1{
			width: 100%;
		}
		.footer_div2_div1_div2{
			width: 100%;
			display: flex;
			height: 100px;
			flex-wrap: wrap;
			border-bottom: 1px solid #232323;
		}
		.footer_div2_div1_div3{
			width: 100%;
		}
	}
	.footer_div1{
		padding:42px 0;
		border-bottom: 1px solid #232323;
	}
	.footer_div1_div_div{
		position: relative;
		height: 90px;
		width: 722px;
		border: 3px solid #c91521;
		box-sizing: border-box;
	}
	.footer_div1_div_div_div1{
		height: 84px;
		width: 95px;
		position: relative;
		overflow: hidden;
	}
	.footer_div1_div_div_div1>img{
		height: 150%;
		position: absolute;
		top:-25%;
		left:-55%;
	}
	.footer_div2{
		color: #a0a0a0;
		padding: 0 20px;
		margin: 0 auto;
		width: 100%;
	}
	.footer_div2_div1{
		border-bottom: 1px solid #232323;
	}
	.footer_div2_div1_div1,.footer_div2_div1_div2,.footer_div2_div1_div3{
		padding: 0 15px;
		box-sizing: border-box;
	}
</style>