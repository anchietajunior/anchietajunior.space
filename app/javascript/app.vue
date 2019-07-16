<template>
  <div id="app">
    <Navbar></Navbar>  
    <router-view/>
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue'
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  created(){
    console.log("CREATED APP");
  },
  components: {
    Navbar
  }
}
</script>