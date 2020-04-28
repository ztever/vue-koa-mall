import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import Navigation from "@/plugins/navigation/index";
import "@/assets/font/iconfont.css";
// import "@/utils/rem";

Vue.use(Navigation, { router });

Vue.config.productionTip = false;

const initVue = () => {
  new Vue({
    router,
    store,
    render: h => h(App)
  }).$mount("#app");
};

const init = async () => {
  await (store as any).restored;
  initVue();
};
init();

export { router, store };
