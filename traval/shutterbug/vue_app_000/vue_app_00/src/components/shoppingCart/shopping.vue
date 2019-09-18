<template>
<div id="test">
    <table id="mytable">
        <tr>
				<th><input type="checkBox" style="width:80px;height:80px;"  @click="selectProduct(isSelectAll)" :checked="isSelectAll" />全选</th>
				<th>商品</th>
				<th>数量</th>
				<th>单价(元)</th>
				<th>金额(元)</th>
				<th>操作</th>
		</tr>

        <tr v-for="(item,index) in productList" :key="index" >
            <td><input type="checkBox"  :checked="item.isSelect" style="width:80px;height:80px;" @click="item.isSelect=!item.isSelect" ></td>
            <td>{{item.proName}}</td>
            <td><span><a href="#" @click="item.proNum>0?item.proNum--:''">-</a></span><strong>{{item.proNum}}</strong><span><a href="#" @click="item.proNum++">+</a></span> </td>
            <td>{{item.proPrice}}</td>
            <td>{{item.proPrice*item.proNum}}</td>
            <td><a href="#" @click="deletePro(index)"> 删除</a></td>
        </tr> 
    </table>
   <div class="checkpro">
       <div class="leftConent"><span><a href="#">删除所选产品</a></span>
       </div>
       <div class="rightConent"><span>{{getTotal.totalNum}}件商品总计：￥{{getTotal.totalPrice}}</span></div>    
           

      
      
   </div>
</div>

</template>
<script>
export default {
    data(){
        return{
            
            productList:[
                {
                    proName:'相机',
                    proNum:1,
                    proPrice:1000,
                },
                {
                    proName:'相机',
                    proNum:1,
                    proPrice:1000,
                },
            ],
            
        }
    },
    methods:{

        
        //删除功能。我们在遍历data集合的时候带上下标index，然后点击删除时我们再通过传递下标的方式进行删除集合的元素。
         deletePro:function(index){
         alert("你正在删除"+this.productList[index].proName);
        this.productList.splice(index,1);
        },
        
        
    },

    //计算属性
    computed:{
        //.总商品数量和总价格。我们只需要在计算属性中实现getTotal并返回总数量和总价格即可
        getTotal:function(){
				var prolist = this.productList.filter(function (val) { return val.isSelect}),
				totalPri = 0;
				for (var i = 0,len = prolist.length; i < len; i++) {
					totalPri+=prolist[i].proPrice*prolist[i].proNum;
				}
				return {totalNum:prolist.length,totalPrice:totalPri}
			},



    },

    //选中功能，
        mounted:function(){
             var _this=this;
         //为productList添加select是否选中字段，初始值为true
             this.productList.map(function(item){
                 _this.$set(item,'isSelect',true);
             })
         },
}
</script>
<style  scope>
    
table{width: 1600px;}
	table th{width: 150px}
	table td{width: 250px;text-align: center;}
	a{text-decoration:none;color: black}
	span{font-size: 20px;margin: 10px 10px}
	strong{border: 1px solid;}
.checkPro{
	background-color: gray;
}
.leftConent {
	float: left;
}
.rightConent{
	float: right;
}


</style>