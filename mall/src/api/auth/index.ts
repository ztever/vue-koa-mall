import { request } from "../base";
import { USER_LOGIN, USER_REGISTER } from "../constants";
/**
 * 用户登录
 * @param user_name
 * @param password
 */

interface UserLoginParams {
  user_name: string;
  password: string;
}
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
interface RegisterUser {
  user_name: string;
  password: string;
  icon: string;
  telephone: string;
}
export const user_register = async (params: RegisterUser) => {
  try {
    const result = await request.post(USER_REGISTER, params);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
