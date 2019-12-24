import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'

Vue.use(Buefy)

import Navbar from "./components/Navbar.vue";

// if ($("body").is(".home") && $("#feed").length) {
  new Vue({
    el: '#feed',
    components: {
      Navbar,
    },
    data: {},
  });
// }
