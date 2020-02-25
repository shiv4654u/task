<template>
  <div>
    <h1>Edit Team</h1>
    <form @submit.prevent="updatePost">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label>Post Title:</label>
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
        </div><br />
        <div class="form-group">
          <button class="btn btn-primary">Update</button>
        </div>
    </form>
  </div>
</template>

<script>
    export default {

      data() {
        return {
          post: {}
        }
      },
      created() {
        let uri = '/api/teams/edit/'+this.$route.params.id;
        axios.get(uri).then((response) => {
            this.post = response.data;
        });
      },
      methods: {
        updatePost() {
          let uri = '/api/teams/update/'+this.$route.params.id;
          axios.post(uri, this.post).then((response) => {
            this.$router.push({name: 'home'});
          });
        }
      }
    }
</script>