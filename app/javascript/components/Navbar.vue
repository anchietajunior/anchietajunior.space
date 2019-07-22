<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Anchieta Júnior</span>
      <span class="d-none d-lg-block">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/profile.jpg" alt="">
      </span>
    </a>
    <button class="navbar-toggler" type="button" id="mobileNavButton" v-on:click="toggleMobileNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
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
    </div>
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
    toggleMobileNav: function () {
      const mobileNav = document.getElementById('mobileNav');
      if(this.mobileNavVisible) {
        mobileNav.style.display = "none";
      } else {
        mobileNav.style.display = "block";
      }
      this.mobileNavVisible = !this.mobileNavVisible;
    }
  }
}
</script>

