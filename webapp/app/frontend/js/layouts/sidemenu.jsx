import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'

Vue.use(Buefy)

import Sidemenu from "./components/Sidemenu.vue"

if(document.body.contains(document.getElementById('sidemenu'))) {

  new Vue({
    el: '#sidemenu',
    components: {
      Sidemenu
    }
  });
}
