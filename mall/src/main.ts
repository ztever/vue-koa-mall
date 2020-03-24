import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import Navigation from "@/plugins/navigation/index";
Vue.use(Navigation, { router });

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
