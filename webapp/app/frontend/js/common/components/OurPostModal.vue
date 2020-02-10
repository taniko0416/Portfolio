<template>
  <section>
    <form action="">
      <div class="modal-card">
        <header class="modal-card-head">
          <p class="modal-card-title">投稿する</p>
        </header>

        <section class="modal-card-body">
          <b-field label="">
            <b-input v-model="postContent" maxlength="1000" type="textarea" required></b-input>
          </b-field>
        </section>

        <footer class="modal-card-foot">
          <div class="buttons">
            <button type="button" @click="$parent.close()" class="button is-rounded is-success is-inverted">Close</button>
            <button type="button" @click="createPost()" class="button is-rounded is-success">Submit</button>
          </div>
        </footer>
      </div>
    </form>
  </section>
</template>

<script>
import Model from 'OurCommonPath/utilities/model.jsx';

export default {
  data() {
    return {
      postContent: null,
    }
  },
  methods: {
    createPost() {
      const params = { content: this.postContent };
      Model.post('/member/posts', params).then( ({ data }) => {
        alert("投稿しましたん。");
        // TODO: 投稿一覧を更新する. -> store?
      });
      this.$parent.close();
    },
  },
}
</script>

<style lang="scss" scoped>
.modal-card {
  .modal-card-body {
    padding-top: 2.5em;
  }
  .modal-card-foot {
    justify-content: center;
  }
}
</style>
