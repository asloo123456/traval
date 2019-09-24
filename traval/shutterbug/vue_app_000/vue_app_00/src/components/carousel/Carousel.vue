<template>
    <div id="app" :style="{width:innerWidth+'px'}" >
        <div :style="ulStyle" :class="ulClass" class="box" @mouseenter="enter" @mouseleave="leave">
        <div v-for="(img,i) of imgs" :key=i  class="box2">
            <router-link :to="img.to" >
                <img :src="img.src" alt="" :style="{width:innerWidth+'px'}" style="height:600px">
            </router-link>
        </div>
        <div :style={width:innerWidth} class="box2">
            <router-link  :to="imgs[0].to">
                <img :src="imgs[0].src" alt="" :style="{width:innerWidth+'px'}" >
            </router-link>
        </div>
        </div>
        <div class="big" :style="{width:innerWidth+'px'}" >
        <a href="javascript:;" @click="move(-1)" class="s1">
            <img src="../../assets/carousel_image/向左 箭头.png" alt="" class="arrow">
        </a>
        <a href="javascript:;" @click="move(1)" class="s2">
            <img src="../../assets/carousel_image/向右 箭头.png" alt="" class="arrow">
        </a>
        </div>
        
            <ul class="ulStyle">
                <li v-for="(elem,idx) in imgs" :key="idx"  @click="moveTo(idx)" >
                    <img :src="(elem.point)" class="points" :class="idx==i?'active':''">
                </li>
            </ul>
      
    </div>
</template>
<script>

export default {
    data(){
       return{ 
        imgs:[
            {
                src:require("../../assets/carousel_image/lunbo1.jpg"),
                to:"javascript:;",
                point:require("../../assets/carousel_image/unchoose.png")
            },
            {
                src:require("../../assets/carousel_image/lunbo2.jpg"),
                to:"javascript:;",
                 point:require("../../assets/carousel_image/unchoose.png")
            },
            {
                src:require("../../assets/carousel_image/lunbo3.jpg"),
                to:"javascript:;",
                point:require("../../assets/carousel_image/unchoose.png")
            },
            {
                src:require("../../assets/carousel_image/lunbo4.jpg"),
                to:"javascript:;",
                point:require("../../assets/carousel_image/unchoose.png")
            },
            {
                src:require("../../assets/carousel_image/lunbo5.jpg"),
                to:"javascript:;",
                point:require("../../assets/carousel_image/unchoose.png")
            },
            {
                src:require("../../assets/carousel_image/lunbo6.jpg"),
                to:"javascript:;",
                point:require("../../assets/carousel_image/unchoose.png")
            }

        ],
        innerWidth:window.innerWidth,
        i:0,
        canClick:true,
        timer:null,
        ulClass:{hasTrans:true}
       }

    },
    created(){
        window.addEventListener("resize",()=>{
            this.innerWidth=window.innerWidth;
        },
       
        )
    },
    methods:{
        
        moveTo(idx){
            // console.log(idx);
            // var e=this.$refs.ee.dataset.i;
            if(this.canClick){
            this.i=idx;
            this.canClick=false;
            setTimeout(()=>{
            this.canClick=true;
            },300)
        }
    },
        move(i){
        if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){
          this.ulClass.hasTrans=false;
          setTimeout(()=>{
            this.i=this.imgs.length;
            setTimeout(()=>{
              this.ulClass.hasTrans=true;
              this.i+=i;
              setTimeout(()=>{
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.imgs.length-1){
          this.i+=i;
          setTimeout(()=>{
            this.ulClass.hasTrans=false;
            setTimeout(()=>{
              this.i=0;
              setTimeout(()=>{
                this.ulClass.hasTrans=true;
                setTimeout(()=>{
                  this.canClick=true;
                })
              },50)
            },50)
          },200)
        }else{
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
        },
        run(){
            this.i=0
            this.timer=setInterval(()=>{
                if(this.i>this.imgs.length-1){
                    this.i=1;
            }
                this.i+=1;
            },4000)
            
        },
        enter(){
            clearInterval(this.timer)
        },
        leave(){
            this.run()
        }
        },
    computed:{
        ulStyle(){
            var width=(this.innerWidth*(this.imgs.length+1))+'px';
            var marginLeft=-this.i*this.innerWidth+"px";
            return {width,marginLeft}
        }
    }
    
}

</script>
<style lang="scss" scoped>

@media screen and (max-width: 1800px) and (min-width:768px){
    .ulStyle{
        display: none!important;
    }
    .big{
        display: none!important
    }

}
.box{
    display: flex;
    
}
.box2::-webkit-scrollbar{
    display: none;
}
.box2{
    height:600px
}

.big::-webkit-scrollbar{
    display: none;
}


.arrow{
    width: 50px;
    padding: 0
}
.ulStyle{
    display: flex;
    list-style: none;
    padding: 0;
    margin: 0;
    position: absolute;
    top:2rem;
    top:45%;
    left:28%
}
.points{
    width:0.5rem;
    opacity:.3
}
.father{
    text-align: center;
    height: 2rem
}
.box{
transition:all .5s linear;
}
.active{
    opacity: .7;
}
 .big{
    display:flex;
    justify-content:space-between;
    position:absolute;
    top:120px;
    // overflow: hidden;
}
</style>


 