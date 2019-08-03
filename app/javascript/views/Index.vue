<template>
  <div class="page">
    <section class="main" id="">
      <h1>Who i am</h1>
      <p>
        I am a web developer since 2009 and focused on High Productivity, 
        Clean Code and TDD since 2015. My main languages are Ruby and
        Javascript and i really like <span class="ruby">Ruby</span> 
        on Rails and <span class="vue">Vue.JS</span>.
      </p>
      <p>
        I also like reading about personal development and listen to old or relaxing music.
      </p>
      <p class="main--job">
        Full-stack developer at Instituto Padre Pio - 2016 until now.
      </p>
      <div class="social-icons">
        <a href="https://www.linkedin.com/in/anchieta-j%C3%BAnior-69568630/" target="_blank">
          <i class="fab fa-linkedin-in"></i>
        </a>
        <a href="https://github.com/anchietajunior" target="_blank">
          <i class="fab fa-github"></i>
        </a>
        <a href="https://twitter.com/anchietajun1or" target="_blank">
          <i class="fab fa-twitter"></i>
        </a>
      </div>
    </section>
    <hr class="division">
  </div>
</template>

<style scoped>
.page {
  height: 500px;
  margin-top: 30px;
  padding-top: 40px;
  width: 60%;
  margin: 30px auto 0;
}

h1 {
  font-family: 'Pacifico', cursive;
  font-size: 1.8em;
  color: #333;
}
p {
  text-align: justify;
  font-family: 'Titillium Web', sans-serif;
  font-size: 1.2em;
  color: #333;
}
.main--job {
  margin-top: 10px;
  color: #777;
}

.division {
  margin-top: 20px;
  border-top: 1px solid #e4e4e4;
}

.social-icons {
  margin-top: 20px;
}

.social-icons a i {
  margin-right: 10px;
  font-size: 2em;
  color: #333;
}
</style>
