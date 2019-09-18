<template>
    <div class="product-app">
        <div class="movie"  v-for="(item,index) of list" :key="index">
          <img class="movie_img" :src="'http://127.0.0.1:8080/'+item.img"  alt="1">
            <div class="movie_info">    
                <div class="movie_title"><span>标题:</span>{{item.title}}</div>
               <div class="movie_times"><span >日期:</span>{{item.times}}</div>
                <div class="movie_writer"><span >作者:</span>{{item.writer}}</div>
                 <button class="movie_bu">加入购物车</button> 
            </div>
            
       </div>
        <!-- 此div表示一个商品 接下来会循环 -->
        
        <!-- 商品结束 -->
         <button>加载更多</button> 
             <button>查看购物车</button> 
    </div>
</template>
<script>
export default {
    data(){
        return{
           list:[],
           pno:0  //保存服务器返回商品列表
        }
    },
    //当组件创建成功后，显示第一页数据  created()
    //当组件创建成功了，created调用
    created(){
        this.loadMore();
    },
    methods:{
        loadMore(){
            //功能一：当组件创建成功后获取第一页数据
           // 1：创建url地址
            var url="product";
            //1.1:将当前页码加一
       this.pno++;
      var obj = {pno:this.pno}
    //   //2:发送ajax请求获取第一页数据
       this.axios.get(url,{params:obj}).then(res=>{
    //    //3:将数据保存data中
        //console.log(res.data.data);
        //this.list = res.data.data;
        //数组拼接操作 
        var rows = this.list.concat(res.data.data);
       //赋值
        this.list = rows;
             })
           

        }
    }
}
</script>
<style lang="scss" scoped>
   .product-app{
       display: flex;
       flex-wrap: wrap;
       padding:0.3rem;
       text-align: left;
       
    .movie{
     display: flex;/*弹性布局*/
    border:1px solid #ccc;/*下划线*/
    border-radius: 0.1rem;
    padding:0.1rem;
    font-size:0.3rem;

    .movie_img{
            width:3rem; /*图片宽度和高度切换响应像素*/
            height:3rem;
                }
        .movie_info{
            display: flex;
            flex-direction: column;
            margin-left:0.1rem;
         /* 标题*/
            .movie_title{
            color:#666; /*文字颜色*/
            /*文字大小*/
            line-height: 1.2;
            span{
                color:#000;
                font-size: 0.2rem;
            }
            }
            .movie_times{
            
             span{
                color:#000;
                font-size: 0.2rem;
            }
            }
            .movie_times{
            
                span{
                    color:#000;
                    font-size: 0.2rem;
                }
            }
             .movie_writer{
            
                span{
                    color:#000;
                    font-size: 0.2rem;
                }
            }
             .movie_bu{
                 width:65%;
                height:0.5rem;   /*按钮高度*/
                background: #e54847; /*背景颜色*/
                color:#fff;          /*文字颜色*/
              font-size:0.4rem;
               margin:0.5rem 0.3rem 0.3rem 0.5rem;
               
                    /*与上面文字间距*/
                text-align: center;
            }
        } 
            
           
    
    }
   } 
</style>