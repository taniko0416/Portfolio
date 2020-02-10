import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'

Vue.use(Buefy)

import OurTools from 'OurCommonPath/components/OurTools.vue';

if(document.body.contains(document.getElementById('our-tools'))) {
  new Vue({
    el: '#our-tools',
    components: {
      OurTools,
    },
  });
}
