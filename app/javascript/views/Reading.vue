<template>    
  <div class="container-fluid p-0">
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <ul class="list-group" v-for="(book, index) in books" :key="index">
          <li class="list-group-item d-flex justify-content-between align-items-center" style="margin-bottom: 20px;">
            <div class="info">
              <h4 style="margin-bottom: 20px;">Title: {{ book.title }}</h4>
              <p><strong>Author: </strong>{{ book.author }}</p>
              <p><strong>Start: </strong>{{ book.start }}</p>
              <p><strong>Progress: </strong>{{ book.progress }}</p>
              <p><strong>Comment: </strong>{{ book.comment }}</p>
            </div>
            <div class="image-parent">
                <img :src="book.image" :alt="book.title" style="width: 245px; height: 360px;">
            </div>
          </li>
        </ul>
      </div>
    </section>
    <hr class="m-0">
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

