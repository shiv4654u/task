<template>
  <div>
      <h1>Matches</h1>
        <div class="row">
          <div class="col-md-10"></div>
          
        </div><br />

        <table class="table table-hover">
         <thead>
            <tr>
                <th>Date</th>
                <th>Matche Details</th>
                <th>Winner</th>
            </tr>
            </thead>
            <tbody>
                <tr v-for="post in posts.data" :key="post.id">
                   <td>{{ post.matchDate }}</td> 
                   <td>{{ post.teamFirst }} vs {{ post.teamTwo }}</td> 
                   <td>{{ post.teamWinner }}</td> 
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
          let uri = '/api/teams/matches';
    axios
      .get(uri)
      .then(response => (this.posts = response.data))
  }
      
  }
</script>
