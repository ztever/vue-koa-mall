import Vue from "vue";
import VueRouter from "vue-router";
import Splash from "@/views/Splash/Splash.vue";
import Login from "@/views/Login/Login.vue";
import RegisterUser from "@/views/RegisterUser/RegisterUser.vue";
import Home from "@/views/Home.vue";
import Main from "@/views/Main/Main.vue";
import List from "@/views/List/List.vue";
import Cart from "@/views/Cart/Cart.vue";
import Setting from "@/views/Setting/Setting.vue";
Vue.use(VueRouter);

const routes = [
  {
    path: "/home",
    name: "home",
    component: Home,
    children: [
      {
        path: "main",
        name: "main",
        component: Main
      },
      {
        path: "list",
        name: "list",
        component: List
      },
      {
        path: "cart",
        name: "cart",
        component: Cart
      },
      {
        path: "setting",
        name: "setting",
        component: Setting
      }
    ]
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
  },
  {
    path: "/",
    name: "spalsh",
    component: Splash
  }
];

const router = new VueRouter({
  routes
  // mode: "history"
});

export default router;
