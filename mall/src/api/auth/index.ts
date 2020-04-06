import { request } from "../base";
import {
  USER_LOGIN,
  USER_REGISTER,
  UPDATE_USER,
  USER_LOGOUT
} from "../constants";
import { UserLoginParams, RegisterUserType, UpdateUser } from "./user";
/**
 * 用户登录
 * @param user_name
 * @param password
 */

export const user_login = async (params: UserLoginParams) => {
  try {
    const result = await request.post(USER_LOGIN, params);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
/**
 * 注册用户
 * @param params
 */

export const user_register = async (params: RegisterUserType) => {
  try {
    const result = await request.post(USER_REGISTER, params);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
/**
 * 修改用户信息
 * @param params
 */

export const update_user = async (params: UpdateUser) => {
  try {
    const result = await request.put(UPDATE_USER, params);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};

/**
 * 退出登录
 */
export const logout_user = async () => {
  try {
    const result = await request.get(USER_LOGOUT);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
