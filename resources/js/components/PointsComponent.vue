<template>
  <div>
      <h1>Points</h1>
        <div class="row">
          <div class="col-md-10"></div>
          
        </div><br />

        <table class="table table-hover">
         <thead>
            <tr>
                <th>Teams</th>
                <th>Won</th>
                <th>Pts</th>
            </tr>
            </thead>
            <tbody>
                <tr v-for="post in posts.data" :key="post.id">
                   <td>{{ post.teamsName }}</td> 
                   <td>{{ post.wins }}</td> 
                   <td>{{ post.pts }}</td> 
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
          let uri = 'http://learnapp.local/api/teams/points';
    axios
      .get(uri)
      .then(response => (this.posts = response.data))
  }
      
  }
</script>
