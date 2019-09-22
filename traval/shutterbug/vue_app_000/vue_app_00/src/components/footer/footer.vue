<template>
	<div class="bottom">
		<!-- 第一部分：广告 -->
		<div class="footer_div1">
			<div class="footer_div1_div">
				<div class="footer_div1_div_div">
					<!-- 京东图标 -->
					<div class="footer_div1_div_div_div1">
						<img src="../../assets/aea226a9be6fddee.jpg" alt="">
					</div>
					<!-- 中间 -->
					<div class="footer_center" >
					    <mt-tab-container class="one" v-model="active" >
						  <mt-tab-container-item class="ones" id="tab1">
                          <a>
					       <img src="../../assets/56fe9b66Nef17a54c.jpg">
					      </a>
                          <div class="pic">
						   <h6>￥   600.00</h6>
						   <h4>艾璐歌 摩托车 雷鹰二代 迷你跑车 两冲程混合油版手拉启动 大轮真空胎可选 迷你小摩托车 黑色双排小轮子</h4>
						  </div>
						  </mt-tab-container-item>
						</mt-tab-container>
						
						 
						 <!--第二个-->
						 <mt-tab-container class="one"  v-model="active">
						  <mt-tab-container-item class="ones" id="tab2">
                          <a>
					       <img src="../../assets/57ce5e4dN2584db01.jpg">
					      </a>
                          <div class="pic">
						   <h6>￥   99.90</h6>
						   <h4>酷冷至尊(CoolerMaster) 纳米钻石导热膏NANO(纳米级工艺/热传导率高达11/高性能CPU、GPU/超频用户使用)</h4>
						  </div>
						  </mt-tab-container-item>
						 </mt-tab-container>
						 <!--第三个-->
						 <mt-tab-container class="one" v-model="active">
						  <mt-tab-container-item class="ones" id="tab3">
                          <a>
					       <img src="../../assets/1f205ea2c708681e.jpg">
					      </a>
                          <div class="pic">
						   <h6>￥   2958.00</h6>
						   <h4>APPLE苹果ipad2018款9.7英寸iPad2019新款10.2英寸平板电脑air2更新版 金色 18款9.7英寸 128G WLAN版-键盘+壳膜</h4>
						  </div>
						  </mt-tab-container-item>
						 </mt-tab-container>

						 <div class="uname" >
						   <div class="bag" @mousemove="active='tab1'"><a >热卖</a></div>
						   <div class="bag" @mousemove="active='tab2'"><a >散热器</a></div>
						   <div class="bag" @mousemove="active='tab3'"><a >平板电脑</a></div>
						 </div>
					</div>
					<!-- 右边 -->
					<div class="footer_right">
					  <mt-tab-container class="one" v-model="actives">
					    <mt-tab-container-item class="ones" id="tab4">
						<a>
						  <img src="../../assets/ffef4e963b34e864.jpg">
						</a>
						<div class="pic">
						   <h6>￥   177.00</h6>
						   <h4>嘉实多Castrol汽车机油发动机油润滑油磁护极护全合成机油 金嘉护半合成油 银嘉护嘉力矿物油 磁护专享全合成5W-40 SN 4L</h4>
						 </div>
						 </mt-tab-container-item>
					  </mt-tab-container>
					  <!--222-->
					  <mt-tab-container class="one" v-model="actives">
					    <mt-tab-container-item class="ones" id="tab5">
						<a>
						  <img src="../../assets/6f9b707703707655.jpg">
						</a>
						<div class="pic">
						   <h6>￥   177.00</h6>
						   <h4>馥花 短外套女春秋装2019新款外套女学生韩版宽松装棒球服女士夹克 天蓝色薄款 M(85-100斤)</h4>
						 </div>
						 </mt-tab-container-item>
					  </mt-tab-container>	
					  <!--333-->
					  <mt-tab-container class="one" v-model="actives">
					    <mt-tab-container-item class="ones" id="tab6">
						<a>
						  <img src="../../assets/9754e843dd47116a.jpg">
						</a>
						<div class="pic">
						   <h6>￥   1247.00</h6>
						   <h4>小米（MI） 小米平板4/Plus 四代 电脑 骁龙660 AIE处理器 金色 【8英寸屏】WIFI版 4GB+64GB</h4>
						 </div>
						 </mt-tab-container-item>
					  </mt-tab-container>		 
						 <div class="uname">
						   <div class="bag" @mousemove="actives='tab4'"><a>润滑油</a></div>
						   <div class="bag" @mousemove="actives='tab5'"><a>短背心</a></div>
						   <div class="bag" @mousemove="actives='tab6'"><a>平板电视</a></div>
						 </div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第二部分和第三部分 -->
		<div class="footer_div2">
			<!-- 第二部分 -->
			<div class="footer_div2_div1">
				<!-- 左边 -->
				<div class="footer_div2_div1_div1" >
					<!-- logo图片 -->
					<div class="footer_div2_div1_div1_div2">
						<img src="../../assets/new_fotomen_logo2(1).png" alt="">
					</div>
					<!-- 文字 -->
					<div class="footer_div2_div1_div1_div">
						<p>它是[摄影之友]的今生,是“摄影之友”的未来。</p>
						<p>是摄影历史资料馆,是摄影技艺集散地。<br>是摄影新锐训练场,是摄影大师集中营。<br>是摄影潮流娱乐圈,是最具价值影像网站。</p>
						<p>只要你热爱生活,一定能在这里找到“真爱”。然后一起,Photo your life！</p>
					</div>
					<!-- 按钮 -->
					<div class="footer_div2_div1_div1_div1">
						<div>
							<a href="#">
								<span>了解更多<img src="../../assets/arrow-right.png" alt=""></span>
							</a>
						</div>
					</div>
				</div>
				<!-- 中间 -->
				<div class="footer_div2_div1_div2">
					<h5>标签</h5>
					<!-- a标签 -->
					<div class="footer_div2_div1_div2_div">
						<a href="#">#《摄影之友》</a>
						<a href="#">#《摄影旅游》</a>
						<a href="#">#人像</a>
						<a href="#">#佳能</a>
						<a href="#">#使用体验</a>
						<a href="#">#创意</a>
						<a href="#">#创意摄影</a>
						<a href="#">#单反</a>
						<a href="#">#后期课堂</a>
						<a href="#">#器材</a>
						<a href="#">#器材</a>
						<a href="#">#奇物论</a>
						<a href="#">#尼康</a>
						<a href="#">#摄影文化</a>
						<a href="#">#徕卡</a>
						<a href="#">#技巧</a>
						<a href="#">#技法</a>
						<a href="#">#摄影小贴士</a>
						<a href="#">#拍摄技巧</a>
						<a href="#">#拍照</a>
						<a href="#">#捕风捉影</a>
						<a href="#">#摄影</a>
						<a href="#">#摄影学院</a>
						<a href="#">#摄影师</a>
						<a href="#">#摄论</a>
						<a href="#">#新锐</a>
						<a href="#">#时尚</a>
						<a href="#">#每日精选</a>
						<a href="#">#热拍地</a>
						<a href="#">#索尼</a>
						<a href="#">#纪实</a>
						<a href="#">#纪实摄影</a>
						<a href="#">#老照片</a>
						<a href="#">#自拍</a>
						<a href="#">#自然</a>
						<a href="#">#行摄</a>
						<a href="#">#行摄攻略</a>
						<a href="#">#观影</a>
						<a href="#">#观影</a>
						<a href="#">#试用测评</a>
						<a href="#">#话题</a>
						<a href="#">#镜头</a>
						<a href="#">#风光</a>
						<a href="#">#鱼眼视屏</a>
						<a href="#">#黑白</a>
					</div>	
				</div>
				<!-- 右边 -->
				<div class="footer_div2_div1_div3">
					<h5>近期更新</h5>
					<!-- 近期更新内容 -->
					<div class="footer_div2_div1_div3_div">
						<!-- 第一层 -->
						<div class="footer_div2_div1_div3_div_div">
							<!-- 左边图片 -->
							<div class="footer_div2_div1_div3_div_div_div1">
								<a href="#">
									<img src="../../assets/1.png" alt="">
								</a>
							</div>
							<!-- 右边文字 -->
							<div class="footer_div2_div1_div3_div_div_div2">
								<h5>
									<a href="#">冠军激情点燃全场·China GT完美达成天津首秀！</a>
								</h5>
								<div class="footer_div2_div1_div3_div_div_div2_div">
									<ul>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<p class="footer_div2_div1_div3_div_div_div2_div_p">发表于</p>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a1">2019年9月12日</a>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a2">无评论</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 第二层 -->
						<div class="footer_div2_div1_div3_div_div">
							<!-- 左边图片 -->
							<div class="footer_div2_div1_div3_div_div_div1">
								<a href="#">
									<img src="../../assets/2.png" alt="">
								</a>
							</div>
							<!-- 右边文字 -->
							<div class="footer_div2_div1_div3_div_div_div2">
								<h5>
									<a href="#">China GT 天津站首回合，XTREME最后一分钟逆转夺冠</a>
								</h5>
								<div class="footer_div2_div1_div3_div_div_div2_div">
									<ul>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<p class="footer_div2_div1_div3_div_div_div2_div_p">发表于</p>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a1">2019年9月12日</a>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a2">无评论</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 第三层 -->
						<div class="footer_div2_div1_div3_div_div">
							<!-- 左边图片 -->
							<div class="footer_div2_div1_div3_div_div_div1" >
								<a href="#">
									<img src="../../assets/3.png" alt="">
								</a>
							</div>

							<!-- 右边文字 -->
							<div class="footer_div2_div1_div3_div_div_div2">
								<h5>
									<a href="#">《国家地理》摄影大赛全球总冠军谈索尼Alpha 7R III</a>
								</h5>
								<div class="footer_div2_div1_div3_div_div_div2_div">
									<ul>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<p class="footer_div2_div1_div3_div_div_div2_div_p">发表于</p>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a1">2019年9月11日</a>
										</li>
										<li class="footer_div2_div1_div3_div_div_div2_div_ul_li">
											<a href="#" class="footer_div2_div1_div3_div_div_div2_div_a2">无评论</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 第三部分 -->
			<div class="footer_div2_div2">
				<!-- 上层 -->
				<div class="footer_div2_div2_div">
					<!-- 左边logo文字 -->
					<a href="#" class="footer_div2_div2_div1">FOTOMEN</a>
					<!-- 右边面包屑 -->
					<div class="footer_div2_div2_div2">
						<ul>
							<li class="footer_ul_li-item">
								<a href="#">关于我们</a>
							</li>
							<li class="footer_ul_li-item">
								<a href="#">联系我们</a>
							</li>
							<li class="footer_ul_li-item">
								<a href="#">工作机会</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- 下层 -->
				<div class="footer_div2_div2_div3">
					Copyright © 2006~2019 FOTOMEN. All rights reserved.
					<p class="footer_div2_div2_div3_p1">
						FOTOMEN.CN：
						<a href="#">粤ICP备14005541号-1</a>
						&nbsp;&nbsp;&nbsp;DCMAGCN.COM：
						<a href="#">粤ICP备14005541号-3</a>
					</p>
					<p class="footer_div2_div2_div3_p2">
						友情链接：
						<a href="#">米拍</a>&nbsp;
						<a href="#">栗子摄影</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</template>
<script>
export default {
	data() {
		return {
			active:"tab1",
			actives:"tab4"
		}
	},
	methods: {
		
	},
}
</script>
<style  lang="scss" scoped>
  .bottom{
		margin: 0;
		background: #111111;
		// font-family: Monaco,"Lucida Sans Typewriter","Lucida Typewriter","Courier New",Courier,monospace;
    font-size: 16px;
    font-weight: 400;
    font-style: normal; 
		letter-spacing: 0;
		line-height: 1.5;
		text-align: left;
	}
	/*超大屏幕下iframe的高度*/
	@media (min-width: 1120px) {
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
			padding: 48px 0;
		}
		.footer_div2_div1_div1{
			width: 33.33333%;
		}
		.footer_div2_div1_div1_div2{
			margin: 0 0 32px;
		}
		.footer_div2_div1_div1_div2>img{
			width: 100%;
		}
		.footer_div2_div1_div2{
			width: 33.33333%;
			flex-wrap: wrap;
		}
		.footer_div2_div1_div3{
			width: 33.33333%;
		}
		.footer_div2_div2{
			padding: 48px 0;
		}
		.footer_div2_div2_div{
			display: flex;
			justify-content:space-between;
		}
		.footer_div2_div2_div1{
			margin: 0 0 16px;
		}
		.footer_div2_div2_div2{
			margin: 0 0 16px;
		}
		.footer_ul_li-item+.footer_ul_li-item{
  		margin: 0 0 0 32px;
		}
		.footer_div2_div2_div3_p1{
			margin: 5px 0 16px;
		}
		.footer_div2_div2_div3_p2{
			margin: 0 0 16px;
		}
		.footer_div2_div1_div3_div_div+.footer_div2_div1_div3_div_div{
			margin: 16px 0 0;
		}
		.footer_div2_div1_div3_div_div_div2>h5{
			text-align: left;
			margin: 0 0 8px !important;
		}
	}
	/*大屏幕下iframe的高度*/
	@media (max-width: 1119px) and (min-width: 1020px) {
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
			padding: 48px 0;
		}
		.footer_div2_div1_div1{
			width: 33.33333%;
		}
		.footer_div2_div1_div1_div2{
			margin: 0 0 32px;
		}
		.footer_div2_div1_div1_div2>img{
			width: 100%;
		}
		.footer_div2_div1_div2{
			width: 33.33333%;
			flex-wrap: wrap;
		}
		.footer_div2_div1_div3{
			width: 33.33333%;
		}
		.footer_div2_div2{
			padding: 48px 0;
		}
		.footer_div2_div2_div{
			display: flex;
			justify-content:space-between;
		}
		.footer_div2_div2_div1{
			margin: 0 0 16px;
		}
		.footer_div2_div2_div2{
			margin: 0 0 16px;
		}
		.footer_ul_li-item+.footer_ul_li-item{
  		margin: 0 0 0 32px;
		}
		.footer_div2_div2_div3_p1{
			margin: 5px 0 16px;
		}
		.footer_div2_div2_div3_p2{
			margin: 0 0 16px;
		}
		.footer_div2_div1_div3_div_div+.footer_div2_div1_div3_div_div{
			margin: 16px 0 0;
		}
		.footer_div2_div1_div3_div_div_div2>h5{
			text-align: left;
			margin: 0 0 8px !important;
		}
	}
	/*中屏幕下iframe的高度*/
	@media (max-width: 1019px) and (min-width: 760px){
		.footer_div1_div{
			width: 780px;
			height:  90px;
  		margin: 0 auto;
		}
		.footer_div2{
			max-width: 720px;
		}
		.footer_div2_div1,.footer_div2_div2{
			padding: 42px 0;
		}
		.footer_div2_div1_div1{
			width: 100%;
		}
		.footer_div2_div1_div1_div2{
			margin: 0 0 28px;
			text-align: center;
		}
		.footer_div2_div1_div1_div2>img{
			width: 70%;
		}
		.footer_div2_div1_div2{
			width: 100%;
			flex-wrap: wrap;
			margin-top: 42px;
			padding: 0!important;
		}
		h5{
			margin: 0 0 28px !important;
		}
		.footer_div2_div1_div3{
			width: 100%;
			border-top: 1px solid #232323;
			margin-top: 42px;
			padding: 42px 0 0 !important;
		}
		.footer_div2_div2_div{
			display: flex;
			justify-content:space-between;
		}
		.footer_div2_div2_div1{
			margin: 0 0 14px;
		}
		.footer_div2_div2_div2{
			margin: 0 0 14px;
		}
		.footer_ul_li-item+.footer_ul_li-item{
  		margin: 0 0 0 28px;
		}
		.footer_div2_div2_div3_p1{
			margin: 5px 0 14px;
		}
		.footer_div2_div2_div3_p2{
			margin: 0 0 14px;
		}
		.footer_div2_div1_div3_div_div+.footer_div2_div1_div3_div_div{
			margin: 14px 0 0;
		}
		.footer_div2_div1_div3_div_div_div2>h5{
			text-align: left;
			margin: 0 0 7px !important;
		}
	}
	/*小屏幕下iframe的高度*/
	@media (max-width: 759px) {
		.footer_div1{
			display: none;
		}
		.footer_div2_div1,.footer_div2_div2{
			padding: 42px 0;
		}
		.footer_div2_div1_div1{
			width: 100%;
		}
		.footer_div2_div1_div1_div2{
			margin: 0 0 28px;
			text-align: center;
		}
		.footer_div2_div1_div1_div2>img{
			width: 70%;
		}
		.footer_div2_div1_div2{
			width: 100%;
			flex-wrap: wrap;
			margin-top: 42px;
			padding: 0 !important;
		}
		h5{
			margin: 0 0 28px !important;
		}
		.footer_div2_div1_div3{
			width: 100%;
			border-top: 1px solid #232323;
			margin-top: 42px;
			padding: 42px 0 0!important;
		}
		.footer_div2_div2_div1{
			margin: 0 0 14px;
		}
		.footer_div2_div2_div2{
			margin: 0 0 14px;
		}
		.footer_ul_li-item+.footer_ul_li-item{
  		margin: 0 0 0 28px;
		}
		.footer_div2_div2_div3_p1{
			margin: 5px 0 14px;
		}
		.footer_div2_div2_div3_p2{
			margin: 0 0 14px;
		}
		.footer_div2_div1_div3_div_div+.footer_div2_div1_div3_div_div{
			margin: 14px 0 0;
		}
		.footer_div2_div1_div3_div_div_div2>h5{
			text-align: left;
			margin: 0 0 7px !important;
		}
	}
	.footer_div1{
		padding:42px 0;
		border-bottom: 1px solid #232323;
	}
	.footer_div1_div_div{
		display:flex;
		position: relative;
		height: 90px;
		width: 722px;
		border: 3px solid #c91521;
		box-sizing: border-box;
		// 中间
		.footer_center{
			display:flex;
			// overflow:hidden;
			//  justify-content:space-between;
			align-items:center;
           background:#fff;
		   width:3.1rem;
		   height:0.84rem;
		  .one{
			  display:flex;
			  .ones{
				  display:flex;
		    img{
			 width:.8rem;
			 height:.8rem;
		     };
		    .pic{
			h6{color:red;margin:0 0 0 .1rem}
		    h4{font-size:.1rem;height:.5rem;margin:.1rem 0 0 .1rem;overflow:hidden;}
		    };
			};
		  };
		  .uname{
             .bag{
				 text-align:center;
				 width:.7rem;
				 height:.28rem;
				 line-height:.3rem;
				 background:#E4E3E3;
				 opacity:0.8;
				 &:hover{background:#c91521;color:#fff;}
				 a{
					 color:#000;cursor:pointer;
					 &:hover{color:#fff;}
					 }
			 }
		  }
		};
		// 右边
		.footer_right{
			display:flex;
			background:#fff;
			align-items:center;
			width:3.1rem;
			height:0.84rem;
			.one{
				display:flex;
				.ones{
					display:flex;
                    img{
				width:.8rem;
				height:.8rem;
			};
			.pic{
			h6{color:red;margin:0 0 0 .1rem}
		    h4{font-size:.1rem;height:.5rem;margin:.1rem 0 0 .1rem;overflow:hidden;}
		     };
		   };
		 };
			
		  .uname{
             .bag{
				 text-align:center;
				 width:.7rem;
				 height:.28rem;
				 line-height:.3rem;
				 background:#E4E3E3;
				 opacity:0.8;
				 &:hover{background:#c91521;color:#fff;}
				 a{
					 color:#000;cursor:pointer;
					 &:hover{color:#fff;}
			    }
			 }
		  };
		}
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
	.footer_div2_div1_div1_div{
		margin: 21px 0 0;
	}
	.footer_div2_div1_div1_div>p{
		margin: 0 0 16px 0;
		text-align: center;
		font-size: 16px;
		font-weight: 400;
	}
	.footer_div2_div1_div1_div1{
		display: flex;
		justify-content: center;
		div{
			margin: 24px 0 0;
  		width: 94px;
			height: 32px;
			border-radius: 2px;
			background-color: #242424;
			overflow: hidden;
			a{
				span{
      		display: block;
      		color: #eee;
      		padding: 7px 16px;
					margin: 0;
      		font-size: 12px;
      		font-weight: bold;
      		letter-spacing: 3px;
      		line-height: 1.5;
      		transition: all .2s ease;
					img{
        		display: block;
        		padding: 15px 15px;
        		height: 15px;
        		width: 27px;
					}
				}
				span:hover{
					background: #141414;
					transform: translateY(-32px);
				}
			}
		}
	}
	a{
		color: #fff;
		text-decoration: none;
	}
	h5{
		width: 100%;
		color: #777;
		text-align: center;
		font-size: 13px;
    font-weight: 700;
    font-style: normal;
    letter-spacing: 3px;
    text-transform: uppercase;
		margin: 0 0 32px 0;
		line-height: 1.2;
	}
	.footer_div2_div1_div2_div{
		text-align: center;
		box-sizing: border-box;
		font-size: 13px;
    font-weight: 400;
    font-style: normal;
    letter-spacing: 1px;
    text-transform: uppercase;
	}
	.footer_div2_div1_div2_div>a{
		color: #fff;
		padding: 0 8px;
		margin: 0 8px 8px 0;
		display: inline-block;
		line-height: 1.2;
	}
	.footer_div2_div1_div2_div>a:hover{
		background-color: #242424;
		color: #a0a0a0;
	}
	.footer_div2_div1_div1,.footer_div2_div1_div2,.footer_div2_div1_div3{
		padding: 0 15px;
		box-sizing: border-box;
	}
	.footer_div2_div2_div1{
		color: #fff;
		font-size: 0.26rem;
    font-weight: 700;
    font-style: normal;
    letter-spacing: -.0125em;
    line-height: 1;
    text-transform: none;
	}
	.footer_div2_div2_div2>ul{
  	display: -webkit-box;
  	display: flex;
  	flex-wrap: wrap;
		margin: 0;
  	padding: 0;
  	list-style: none;
	}
	.footer_ul_li-item+.footer_ul_li-item{
  	display: inline-block;
  	content: " ";
	}
	.footer_div2_div2_div2>ul>li>a{
  	color: #fff;
  	font-weight: bold;
  	font-size: 13px;
	}
	.footer_div2_div2_div3{
		font-size: .1rem;
    line-height: 1;
	}
	.footer_div2_div2_div3>p>a{
		color: #fff;
	}
	.footer_div2_div2_div1>a:hover,.footer_div2_div2_div3>p>a:hover,.footer_div2_div2_div2>ul>li>a:hover,.footer_div2_div2_div1:hover{
		color: #a0a0a0;
	}
	.footer_div2_div1_div3_div_div{
		display: flex;
		flex-flow: row nowrap;
	}
	.footer_div2_div1_div3_div_div_div1{
		width:90px;
		height: 90px;
		padding: 0 15px 0 0;	
	}
	.footer_div2_div1_div3_div_div_div1>a{
		display: block;
		width:90px;
		height: 90px;
		overflow: hidden;
	}
	.footer_div2_div1_div3_div_div_div1>a>img{
		width: 90px;
		height: 90px;
		transition: all 0.2s ease;
	}
	.footer_div2_div1_div3_div_div_div1>a>img:hover{
		transform: scale(1.3);
	}
	.footer_div2_div1_div3_div_div_div2{
  	display: flex;
		flex-direction: column;
		justify-content: center;
	}
	.footer_div2_div1_div3_div_div_div2>h5{
		font-size: 15px;
    letter-spacing: -.015em;
	}
	.footer_div2_div1_div3_div_div_div2_div>ul{
		display: flex;
  	flex-wrap: wrap;
		margin: 0;
  	padding: 0;
  	list-style: none;
	}
	.footer_div2_div1_div3_div_div_div2_div_ul_li+.footer_div2_div1_div3_div_div_div2_div_ul_li{
		margin: 0 0 0 7px;
	}
	.footer_div2_div1_div3_div_div_div2_div_p{
		margin: 0;
	}
	.footer_div2_div1_div3_div_div_div2_div{
		font-size: 11px;
    font-weight: 400;
    font-style: normal;
    letter-spacing: 1px;
	}
	.footer_div2_div1_div3_div_div_div2_div_a2::before{
		margin-right: 8px;
    content: "\b7";
	}
	.footer_div2_div1_div3_div_div_div2>h5>a:hover,.footer_div2_div1_div3_div_div_div2_div_a1:hover,.footer_div2_div1_div3_div_div_div2_div_a2:hover{
		color: #a0a0a0	;
	}
</style>