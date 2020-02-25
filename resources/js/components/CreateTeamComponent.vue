// CreatePost.vue

<template>
  <div>
    <h1>Create A Team</h1>
    <form @submit.prevent="addPost">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label>Team Name:</label>
            <input type="text" class="form-control" v-model="post.name">
          </div>
        </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>Team Logo:</label>
              <input type="text" class="form-control" v-model="post.logoUri">
            </div>
          </div>
        </div>
        <br />
        <div class="form-group">
          <button class="btn btn-primary">Create</button>
        </div>
    </form>
  </div>
</template>

<script>
    export default {
        data(){
        return {
          post:{}
        }
    },
    methods: {
      addPost(){
        let uri = '/api/teams/create';
        axios.post(uri, this.post).then((response) => {
           this.$router.push({name: 'home'});
        });
      }
    }
  }
</script>