import Vue from "vue";
import VueRouter from "vue-router";
import Splash from "@/views/Splash/Splash.vue";
import Login from "@/views/Login/Login.vue";
import RegisterUser from "@/views/RegisterUser/RegisterUser.vue";
import Home from "@/views/Home.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "spalsh",
    component: Splash
  },
  {
    path: "/home",
    name: "home",
    component: Home
  },
  {
    path: "/login",
    name: "login",
    component: Login
  },
  {
    path: "/registeruser",
    name: "registeruser",
    component: RegisterUser
  }
];

const router = new VueRouter({
  routes
});

export default router;
