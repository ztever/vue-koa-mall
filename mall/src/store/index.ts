import Vue from "vue";
import Vuex from "vuex";
import createLogger from "vuex/dist/logger";
import vuexLocal from "./plugins";

import user from "./modules/user";

Vue.use(Vuex);
const vuexPlugins = [vuexLocal.plugin];

if (
  process.env.NODE_ENV !== "production" ||
  process.env.VUE_APP_VUEX_LOGGER === "ON"
) {
  vuexPlugins.push(
    createLogger({
      collapsed: true // vuex logger
    })
  );
}

export default new Vuex.Store({
  state: {},
  mutations: {},
  actions: {},
  modules: {
    user
  },
  plugins: vuexPlugins,
  strict: process.env.NODE_ENV === "production"
});
