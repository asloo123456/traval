<template>
    <div class="post_comme">
        <ul>
          <h2>评论:</h2>
           <li v-for="(task,i) of tasks">
             {{task}}
           </li>
        </ul>
        <h2>发表评论</h2>
        <p>电子邮件地址不会被公开。必须填项已用<span style="color:red">*</span>标注</p>
        <form>
          <div>
          <label style="display:block">你的评论<span style="color:red">*</span></label>
          <textarea class="form_control" v-model="task"></textarea>
          </div>
          <div class="div_form" v-for="(item) of title">
              <label style="display:block;" v-text="item.name"><span style="color:red">*</span></label>
              <input />
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
            <input  type="submit" value="发表评论" @click="sub">
          </p>
        </form>
        <p class="pst">此站点使用Akismet来减少垃圾评论。<a style="display:block;">了解我们如何处理您的评论数据。</a></p>
    </div>
</template>
<script>
export default {
    data(){
        return {
            task:"",
            title:[
                {name:"名字"},{name:"电子邮箱"},{name:"网站"}
            ],
            tasks: ["本人热爱摄影 热爱艺术 不过是学语言专业的希望有机会加入做一些创意 根美术 艺术有关的工作","科研人员，业余爱好摄影二十年，对摄影有无上的热爱，单是不想放弃现在的科研共作，想问你们找兼职人员么？"]
        }
    },
    methods: {
        sub(){
          this.task="";
          this.tasks.push(this.task);
        }
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
    
       h2{font-size:.2rem;color:#fff;margin:0 0 .5rem 0;}
       p{font-size:.2rem;color:#fff;margin:.3rem 0}
       label{font-size:.2rem;color:#595959}
       .form_control{width:5rem;height:3rem;background:#232323;border:0;font-size:.3rem;margin-bottom:.1rem;color:#fff; }
       .div_form{
           margin-bottom:.1rem;
           input{
               width:5rem;height:.4rem;background:#232323;border:0;font-size:.3rem;color:#fff;
               position:relative;
               bottom:0.3rem;
           }
       };
       .conper{
           width:5rem;height:.4rem;margin:0;
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