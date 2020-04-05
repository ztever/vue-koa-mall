import { GET_CAPTCHA } from "@/api/constants";
import { request } from "../base";

/**
 * 获取验证码
 */
export const get_captcha = async () => {
  try {
    const result = await request.get(GET_CAPTCHA);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
