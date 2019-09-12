<template >
    <div>
    <!--父组件-->
        <indexss></indexss>
    </div>
</template>
<script>
import Indexss from './Indexss.vue'
export default {
    data(){
        return {}
    },
    // 注册子组件
    components:{"indexss":Indexss},
    
}
</script>