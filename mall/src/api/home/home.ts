import { request } from "../base";
import { GET_BANNER, GET_NAV_LIST, GET_JD_HOME } from "../constants";
/**
 * 获取home页的banner
 */
export const get_banner = async () => {
  try {
    const result = await request.get(GET_BANNER);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
/**
 * 获取推荐入口
 */
export const get_nav_list = async () => {
  try {
    const result = await request.get(GET_NAV_LIST);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
/**
 * 获取京东小院
 */
export const get_jd_home = async () => {
  try {
    const result = await request.get(GET_JD_HOME);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
