<template>
  <nav class="sidebar">
    <span class="sidebar--title">Anchieta Júnior</span>
    <img class="sidebar--image" src="img/profile.jpg" alt="">
    <ul class="sidebar--menu">
      <li class="">
        <router-link class="" to="/">About</router-link>
      </li>
      <li class="">
        <router-link class="" to="/reading">Reading</router-link>
      </li>
      <li class="">
        <a class="" href="https://medium.com/@anchietajunior" target="_blank">Blog</a>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  data: function() {
    return {
      mobileNavVisible: false
    }
  },
  methods: {
  }
}
</script>

<style scoped>

</style>
