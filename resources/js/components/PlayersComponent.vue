<template>
  <div>
      <h1>{{posts.team_name.name}}</h1>
        <div class="row">
          <div class="col-md-10"><p class="text-center" v-show="!posts.data.length">Data not available</p></div>
          
        </div><br />

        <table class="table table-hover" v-show="posts.data.length">
         <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Jersey No.</th>
                <th>Matches</th>
                <th>Runs</th>
                <th>HS</th>
                <th>50</th>
                <th>100</th>
            </tr>
            </thead>
            <tbody>
                <tr v-for="post in posts.data" :key="post.id">
                    <td><img v-bind:src="post.imageUri" width="50" /></td>  
                    <td>{{ post.firstName }} {{ post.lastName }}</td>
                    <td>{{ post.jerseyNumber }}</td> 
                   <td>{{ post.matches }}</td> 
                   <td>{{ post.runs }}</td> 
                   <td>{{ post.highestScores }}</td> 
                   <td>{{ post.fifties }}</td> 
                   <td>{{ post.hundreds }}</td> 
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
          let uri = '/api/teams/players/'+this.$route.params.id;
    axios
      .get(uri)
      .then(response => (this.posts = response.data))
  }
      
  }
</script>
