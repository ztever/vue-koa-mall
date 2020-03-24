import Vue from "vue";
import VueRouter from "vue-router";
import Splash from "../views/Splash/Splash.vue";
import Login from "../views/Login/Login.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "spalsh",
    component: Splash
  },
  {
    path: "/login",
    name: "login",
    component: Login
  }
];

const router = new VueRouter({
  routes
});

export default router;
