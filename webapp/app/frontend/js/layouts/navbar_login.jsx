import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'

Vue.use(Buefy)

import Navbar_login from "./components/Navbar_login.vue"

if(document.body.contains(document.getElementById('header'))) {

  new Vue({
    el: '#header',
    components: {
      Navbar_login
    },
    data: {

    },
  });

}
