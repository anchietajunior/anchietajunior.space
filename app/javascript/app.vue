<template>
  <div id="app">
    <Navbar></Navbar>
    <ul class="navbar-nav mobile-nav" id="mobileNav">
      <li class="nav-item">
        <router-link class="nav-item nav-link active" to="/">About</router-link>
      </li>
      <li class="nav-item">
        <router-link class="nav-item nav-link active" to="/reading">Reading</router-link>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="https://medium.com/@anchietajunior" target="_blank">Blog</a>
      </li>
    </ul> 
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

<style>
  
</style>
