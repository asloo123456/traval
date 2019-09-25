<template class="con">
    <div class="app" >
         <a href="#" @click="dj"   class="zuo" ><img  src="../../assets/img/zuo.png" alt=""></a>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    methods:{
      dj(){
        this.$router.go(-1);
      },
    }
}
</script>
<style lang="scss" scoped>
@media screen and (max-width:1000px){

  .app{
       background:#111;
        margin:0; padding:0;
        height:0.45rem;
 .zuo{
        
        // display:none;
        
       margin-left:0.1rem;
      img{
        margin-bottom:0.6rem;
      }
      
      }
  
    }

}

  @media screen and (min-width:1001px){
    .app{
      
     display:none;
  
    }
  }
</style>