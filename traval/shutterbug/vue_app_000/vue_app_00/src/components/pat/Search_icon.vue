<template>
    <div class="div_body">
       <button>X</button>
       <div  class="div_inut">
           <div class="div_tow">
               <input type="text">
           </div>
       </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style lang="scss" scoped>
    .div_body{
        height:100%;
        background:#000;
        button{background:#000;border:0;color:#fff;font-size:.5rem}
        .div_inut{
            position:relative;
            .div_tow{
                position:absolute;
                bottom:50%

            }
        }
    }
</style>