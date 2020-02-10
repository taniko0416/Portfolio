<template>
  <div>

    <!-- <a :href="'https://news.ycombinator.com/user?id=' + item.author" v-text="item.author"></a> | -->
    <div v-for="item in list" class="our-post-lists__post-wrapper">

      <div class="our-post-lists__header">
        <span v-text="item.user.name" class="our-post-lists__name"></span>
        <span v-text="'@'+item.user.slug"></span>
        <span v-text="item.post.created_at"></span>
      </div>

      <div class="our-post-lists__content">
        <span v-text="item.post.id"></span>
        <span v-text="item.post.content" style="word-wrap:break-word;"></span>
      </div>

      <div class="our-post-lists__footer">
        <span v-text="'XXX'"></span> comments 
        <span v-text="'XXX'"></span> likes
      </div>

    </div>

    <infinite-loading @infinite="infiniteHandler" spinner="circles">
      <span slot="no-more"> There is no more Posts :( </span>
    </infinite-loading>

  </div>
</template>

<script>
import InfiniteLoading from 'vue-infinite-loading';
import Model from 'OurCommonPath/utilities/model.jsx';

// TODO: スマホ対応、無限スクロール
export default {
  components: {
    InfiniteLoading,
  },
  data() {
    return {
      list: [],
    };
  },
  methods: {
    infiniteHandler($state) {
      const pageSize = 5;
      const params = { 
        page: this.list.length / pageSize,
        size: pageSize,
      };
      Model.get('/member/posts', params).then( ({ data }) => {
        if (data.hits.length) {
          this.list.push(...data.hits);
          $state.loaded();
        } else {
          $state.complete();
        }
      });
    },
  },
};

</script>

<style lang="scss" scoped>
@import 'ScssVariables/_variables.scss';

.our-post-lists__post-wrapper {
  padding: 1rem;
  border-bottom: $our-border;

  .our-post-lists__header {
    .our-post-lists__name {
      font-weight: $weight-semibold;
    }
  }

  .our-post-lists__footer {
    margin-top: 0.5rem;
  }
}
</style>

<style lang="scss">
.b-tabs .tab-content { // overwride buefy css
  padding: initial;
}
</style>
