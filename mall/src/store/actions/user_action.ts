import {
  USER_LOGIN_ACTION,
  UPDATE_USER_INFO,
  REGISTER_USER,
  PUT_USER_INFO,
  UPDATE_TOKEN,
  LOGOUT_USER,
  DELETE_USER_INFO
} from "../constants/user";
import {
  user_login,
  user_register,
  update_user,
  logout_user
} from "@/api/auth/index";
import { router } from "@/main";
import { RegisterUserType } from "@/api/auth/user";

export default {
  async [USER_LOGIN_ACTION]({ commit }: any, payLoad: any) {
    try {
      const result: any = await user_login(payLoad);
      await commit(UPDATE_TOKEN, result.token);
      await commit(UPDATE_USER_INFO, result);
      // 登录成功跳转到home页
      router.replace({
        name: "main",
        query: {
          routerTransition: "forward"
        }
      });
    } catch (error) {
      return Promise.reject(error);
    }
  },
  // eslint-disable-next-line
  async [REGISTER_USER]({}: any, payLoad: RegisterUserType) {
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
  },
  async [PUT_USER_INFO]({ commit }: any, payLoad: any) {
    try {
      await update_user(payLoad);
      await commit(UPDATE_USER_INFO, payLoad);
    } catch (error) {
      return Promise.reject(error);
    }
  },
  async [LOGOUT_USER]({ commit }: any) {
    try {
      await logout_user();
      await commit(DELETE_USER_INFO);
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
