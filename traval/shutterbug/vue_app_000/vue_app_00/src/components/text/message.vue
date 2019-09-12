<template>
<div id="app">
<ul>     
  <li
      v-for="item in groceryList"
      v-text="item.text"
      v-bind:key="item.id"
    ></li>
</ul> 
</div>
</template>

<script>
export default {    
    data() {
        return {
        groceryList: [
            { id: 0, text: '蔬菜' },
            { id: 1, text: '奶酪' },
            { id: 2, text: '随便其它什么人吃的东西' }
            ]      
        }
    },
}
</script>