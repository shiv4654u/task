<template>
  <div>
      <h1>Teams</h1>
        <div class="row">
          <div class="col-md-10"></div>
          <div class="col-md-2">
            <router-link :to="{ name: 'create' }" class="btn btn-primary">Create Team</router-link>
          </div>
        </div><br />

        <table class="table table-hover">
            <tbody>
                <tr v-for="post in posts" :key="post.id">
                    <td><router-link :to="{name: 'players', params: { id: post.id }}"><img v-bind:src="post.logoUri" /></router-link>&nbsp;&nbsp;{{ post.name }}</td>  
                    <td><router-link :to="{name: 'edit', params: { id: post.id }}" class="btn btn-primary">Edit</router-link> &nbsp; <button class="btn btn-danger" @click.prevent="deleteTeam(post.id)">Delete</button></td>
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
          let uri = '/api/teams';
    axios
      .get(uri)
      .then(response => (this.posts = response.data.data))
  },
  methods: {
      deleteTeam(id)
      {
        let uri = '/api/teams/delete/'+id;
        axios.delete(uri).then(response => {
          this.posts.splice(this.posts.indexOf(id), 1);
        });
      }
    }
      
  }
</script>
