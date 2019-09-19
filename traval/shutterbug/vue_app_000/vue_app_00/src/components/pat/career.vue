<template>
    <div class="post_comme">
        <h1 style="font-size:.9rem;color:#fff;text-align:center">工作机会</h1>
        <h3 style="font-size:.5rem;color:#dc223c">高至影像科技</h3>
        <h3 style="font:.4rem 'HanHei';color:#fff">工作地点</h3>
        <p style="color:#a0a0a0;font:.3rem 'HanHei'">杭州</p>
        <h3 style="font:.4rem 'HanHei';color:#fff;margin-top:.8rem">基本要求</h3>
        <ul style="padding-left:.6rem; list-style:disc">
          <li style="padding:0;font:0.27rem 'HeiTi';color:#DBDBDB;margin-bottom:.2rem ">热爱摄影， 热爱影像，热爱互联网，热爱与视觉相关的事物， 能够理解美食一种有逻辑综合感受， 而非单一的视觉刺激</li>
          <li style="padding:0;font:0.27rem 'HeiTi';color:#DBDBDB;margin-bottom:.2rem  ">能够跟踪和学习最新的软件技术，对本专业的对接专业有足够了解</li>
          <li style="padding:0;font:0.27rem 'HeiTi';color:#DBDBDB; ">有良好的自律和自我管理能力、创新情结和创业心态，善于沟通，乐于助人</li>
        </ul>
        <h3 style="font:.5rem 'HanHei';color:#fff">简历投递</h3>
        <p style="color:#A0A0A0;font:.3rem 'HanHei'">e-Mail: yujg@syzychina.com</p>
        <h4 style="color:#DC223C;font:.4rem 'HanHei'"><span>[职位]</span><span>JDNME_内容运营/编辑</span></h4>
        <p style="color:#A0A0A0;font:.3rem 'HanHei'">
          职位描述:<br>
          1. 独立寻找选题并制作，完成日常新媒体稿件的采编;<br>
          2. 包含微信、微博在内的多个内容平台的日常运营;<br>
          3. 定期策划H5、线上活动或其它互联网产品，以达到提高知名度、活跃用户、转化粉丝、商业变现等目的。
        </p>
        <p style="color:#A0A0A0;font:.3rem 'HanHei'">
          任职要求:<br>
          1. 热爱摄影的高普青年。<br>
          2. 对摄影的理论、器材、文化或技巧中至少一个领域有较多了解。了解摄影爱好者群体，有较高审美能力。<br>
          3. 能够熟练掌握office办公软件，能熟练使用Adobe Photoshop / illustrator / Premiere 等图片和视频编辑软件，擅长平面设计、手绘或网页设计者优先录用。<br>
          4. 有内容电商运营经验者优先考虑。<br>
          5. 思维活跃，吃苦耐劳，能摄影不定期需要脑暴的互联网工作节奏。
        </p>
        <!--评论-->
        <ul>
          <h2>评论:</h2>
           <li v-for="(task,i) of tasks"  :key="i">
           <div style="margin-bottom:.3rem" >
             <img style="background:#fff;border-radius:50%;margin-right:.3rem" src="../../assets/ren.png"/>
             <b :key="i" style="color:#fff;font:.25rem 'HanHei';height:.4rem;display:block">{{uname}}</b>
             <p style="color:#595959;height:.4rem;position:relative;margin:0" >{{new Date(timer).toLocaleString()}}</p>
           </div>
            {{task}}
           </li>
        </ul>
        <!--/////-->
        <h2>发表评论</h2>
        <p>电子邮件地址不会被公开。必须填项已用<span style="color:red;margin:0;font-size:.2rem">*</span>标注</p>
        <form>
          <div>
          <label style="display:block">你的评论<span style="color:red;font-size:.2rem">*</span></label>
          <textarea class="form_control" v-model="task" ></textarea>
          </div>
          <div class="div_form" v-for="(item,index) of title" :key="index">
              <label  v-text="item"></label><span style="color:red;font-size:.2rem">*</span><br>
              <input v-model="list[index]" @keydown.13="sub" >
          </div>
          <!--div class="div_form">
              <label style="display:block;">电子邮箱<span style="color:red">*</span></label>
              <input v-model="task" text="">
          </div>
          <div class="div_form">
              <label style="display:block;">网站</label>
              <input v-model="task" text="">
          </div-->
          <p class="conper"> 
            <input  type="button" value="发表评论" @click="sub">
          </p>
        </form>
        <p class="pst">此站点使用Akismet来减少垃圾评论。<br><a style="color:#fff">了解我们如何处理您的评论数据。</a></p>
    </div>
</template>
<script>
export default {
    data(){
        return {     
            title:[
                "名字","电子邮箱","网站"
            ],
            tasks: ["本人热爱摄影 热爱艺术 不过是学语言专业的希望有机会加入做一些创意 根美术 艺术有关的工作","科研人员，业余爱好摄影二十年，对摄影有无上的热爱，单是不想放弃现在的科研共作，想问你们找兼职人员么？"],
            task:"",
            uname:"哎呦不错哦",
            // timer:1566199863843,
            timer:new Date().getTime(),
            list:[]
        }
        setInterval(function(){
            timer:new Date().getTime()
            })
        
    },
    methods: {
        sub(){    
        this.tasks.push(this.task);
        this.task=""; 
        console.log(this.list);
        },

    },
}
</script>
<style lang="scss" scoped>
    .post_comme{
        display:flex;
        justify-content:space-between;
        // align-items:center;
        display:block;
    //    margin:.8rem 0 0 0;
       padding:.4rem .7rem;
       background:#1e1e1e;
    
       h2{font-size:.3rem;color:#fff;margin:0 0 .5rem 0;}
       p{font-size:.2rem;color:#fff;margin:.3rem 0}
       label{font-size:.2rem;color:#595959}
       .form_control{width:5rem;height:3rem;background:#232323;border:0;font-size:.3rem;margin-bottom:.1rem;     &:focus{background-color:#fff;}}
       
       .div_form{
        //    margin-bottom:.1rem;
        height:2rem;
           input{
               width:5rem;height:.4rem;background:#232323;border:0;font-size:.3rem;
               position:relative;
               bottom:0.3rem;
               &:focus{background-color:#fff}
           }
       };
       .conper{
           width:5rem;height:.4rem;margin:.2rem 0 0 ;
           input{width:1.5rem;height:.4rem;text-align:center;background:#474747;border:0;color:#fff;}
           }
        .pst{font-size:0.3rem;color:#dbdbdb;margin-top:0}   
       ul{
           list-style:none;
           margin-top:0;
           padding:0;
           li{
               font-size:.3rem;
               padding:.2rem 0; 
               color:#fff;
           }
       } 
    }
</style>