import { request } from "../base";
import {
  GET_BANNER,
  GET_NAV_LIST,
  GET_JD_HOME,
  GET_RECOMMEND_LIST
} from "../constants";
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
/**
 *
 * @param limit 每次获取数量
 * @param offset 获取第几页
 */
export const get_recommend_list = async (
  offset: number = 0,
  limit: number = 10
) => {
  try {
    const result = await request.post(GET_RECOMMEND_LIST, { limit, offset });
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};
