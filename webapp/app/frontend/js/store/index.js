import Vue from 'vue'
import Vuex from 'vuex'
import tool from './modules/tool'

Vue.use(Vuex)
/** 
    ディレクトリ構造について
    -> https://vuex.vuejs.org/ja/guide/structure.html
 */

const debug = process.env.NODE_ENV !== 'production' // TODO: check if NODE_ENVが機能している

export default new Vuex.Store({
  modules: {
    tool,
  },
  strict: debug,
})
