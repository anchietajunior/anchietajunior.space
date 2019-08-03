<template>
  <nav class="header">
    <div class="header--title">Anchieta Júnior</div>
    <span class="header--location">From Paulo Afonso - Brazil</span>
    <img class="header--image" src="img/profile.jpg" alt="">
    <ul class="header--menu">
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
.header {
  text-align: center;
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: center;
}

.header--title {
  margin-top: 30px;
  font-family: 'Pacifico', cursive;
  font-size: 3em;
}

.header--location {
  font-family: 'Titillium Web', sans-serif;
  font-size: 1.2em;
  color: #777;
}

.header--image {
  max-width: 150px;
  margin: 20px auto 0;
  border-radius: 50%;
  border: 7px solid #e4e4e4;
}

.header--menu {
  margin: 30px auto 0;
}

.header--menu li {
  list-style: none;
  float: left;
  margin-right: 30px;
}

.header--menu li a {
  text-decoration: none;
  font-family: 'Pacifico', cursive;
  color: #333;
  font-size: 1.4em;
}
</style>
