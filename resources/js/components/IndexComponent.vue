<template>
  <div>
      <h1>Teams</h1>
        <div class="row">
          <div class="col-md-10"></div>
          
        </div><br />

        <table class="table table-hover">
            <tbody>
                <tr v-for="post in posts" :key="post.id">
                    <td><img v-bind:src="post.logoUri" />&nbsp;&nbsp;{{ post.name }}</td>  
                </tr>
            </tbody>
        </table>
  </div>
</template>

<script>
  export default {
      data() {
        return {
          posts: []
        }
      },
      mounted () {
          let uri = 'http://learnapp.local/api/teams';
    axios
      .get(uri)
      .then(response => (this.posts = response.data.data))
  }
      
  }
</script>
