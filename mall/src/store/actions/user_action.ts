import {
  USER_LOGIN_ACTION,
  UPDATE_USER_TOKEN,
  REGISTER_USER
} from "../constants/user";
import { user_login, user_register } from "@/api/auth/index";
import { router } from "@/main";
export default {
  async [USER_LOGIN_ACTION]({ commit }: any, payLoad: any) {
    try {
      const result = await user_login(payLoad);
      await commit(UPDATE_USER_TOKEN, result);
      // 登录成功跳转到home页
      router.replace({
        name: "home",
        query: {
          routerTransition: "forward"
        }
      });
    } catch (error) {
      return Promise.reject(error);
    }
  },
  // eslint-disable-next-line
  async [REGISTER_USER]({}: any, payLoad: any) {
    try {
      await user_register(payLoad);
      //注册成功，跳转到登录页面
      router.replace({
        name: "login",
        query: {
          routerTransition: "up"
        }
      });
    } catch (error) {
      return Promise.reject(error);
    }
  }
};
