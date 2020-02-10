<template>
  <div>

    <div class="our-tools__wrapper" @click="launchTool">
      <i class="mdi mdi-fountain-pen-tip mdi-36px"></i>
    </div>

    <b-modal :active.sync="isPostModalActive"
         has-modal-card
         trap-focus
         aria-role="dialog"
         aria-modal>
      <our-post-modal></our-post-modal>
    </b-modal>

  </div>
</template>

<script>
import OurPostModal from 'OurCommonPath/components/OurPostModal.vue';

export default {
  components: {
    OurPostModal,
  },
  data() {
    return {
      isPostModalActive: false,
    }
  },
  methods: {
    launchTool() {
      this.isPostModalActive = true;
    },
  },
}
</script>

<style lang="scss" scoped>
@import 'ScssVariables/_variables.scss';

.our-tools__wrapper {
  position: fixed;
  bottom: 30px;
  right: 30px;
  background-color: palettes(icon);
  color: palettes(icon,text);
  text-align: center;
  height: 60px;
  line-height: 60px;
  width: 60px;
  border-radius: 50%;
}
</style>
