<template>    
  <div class="reading">
    <section class="main" id="about">
      <h1>Reading</h1>
      <div class="reading--wrapper">
        <ul class="" v-for="(book, index) in books" :key="index">
          <li class="reading--book">
            <div class="reading--book--info">
              <h4 class="reading--book--info--title">Title: {{ book.title }}</h4>
              <p><strong>Author: </strong>{{ book.author }}</p>
              <p><strong>Start: </strong>{{ book.start }}</p>
              <p><strong>Progress: </strong>{{ book.progress }}</p>
              <p><strong>Comment: </strong>{{ book.comment }}</p>
            </div>
            <div class="image-parent">
                <img :src="book.image" :alt="book.title" style="max-width: 150px;">
            </div>
          </li>
        </ul>
      </div>
    </section>
 </div>  
</template>

<script>
import axios from 'axios'

export default {
  data: function() {
    return {
      books: []
    }
  },
  created() {
    axios.get('/v1/reading')
      .then(res => {
        this.books = res.data
      })
      .catch(error => console.log(error))
  }
 }
</script>

<style scoped>
.main {
  padding-top: 40px;
  width: 600px;
  margin: 0 auto;
}

h1 {
  font-family: 'Pacifico', cursive;
  font-size: 1.8em;
  color: #333;
}

h4 {
  margin-bottom: 20px;
  font-size: 1.4em;
}

.reading--wrapper {
  margin-top: 30px;
  width: 100%;
  padding-bottom: 20px;
  border-bottom: 2px solid #333;
}

.reading--book {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-content: space-between;
  font-family: Arial, Helvetica, sans-serif;
}

.reading--book--info {
  padding-right: 20px;
}
</style>


