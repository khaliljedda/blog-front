<template>
  <div id="app">
    <div id="app">
      <h1 class="m-auto">simple blog app</h1>
      <b-card v-for="post in posts" :key="post.key">
        <h2>{{ post.name }}</h2>
        <div class="col-6 m-auto">
          <p>{{ post.description }}t</p>
        </div>

        <br />
      </b-card>
    </div>
  </div>
</template>

<script>
/* import {API} from './config';
 */export default {

  name: "App",
  data() {
    return {
      posts: [],
      big_title:'sdfgsdgsdfgsd'
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      try {
        const response = await this.$http.get(
         process.env.VUE_APP_API_URL+'FeuilleDeRoute'
        );
        // JSON responses are automatically parsed.
        this.posts = response.data.data;
      } catch (error) {
        console.log(error);
      }
    },
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
