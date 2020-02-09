import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'

Vue.use(Buefy)

import AccountHomeTabs from "./components/AccountHomeTabs.vue"

if(document.body.contains(document.getElementById('account-home-tabs'))) {

  new Vue({
    el: '#account-home-tabs',
    components: {
      AccountHomeTabs
    },

    data: {

    },

  });

}
