<template>
  <section>
    <b-tabs position="is-centered" expanded :animated="false">
      <b-tab-item label="Posts" icon="pencil">
        <our-post-lists></our-post-lists>
      </b-tab-item>
      <b-tab-item label="Threads" icon="forum">【準備中】会話のある投稿が表示されます。</b-tab-item>
      <b-tab-item label="Likes" icon="thumb-up">【準備中】あなたがいいねした投稿が表示されます。</b-tab-item>
    </b-tabs>
  </section>
</template>

<script>
// TODO: create a reuseable tab component... mv
// TODO: add original class for html

import OurPostLists from "OurCommonPath/components/OurPostLists.vue";

export default {
  components: {
    OurPostLists,
  },
  data() {
    return {
    }
  }
}
</script>

<style lang="scss" module>

</style>
