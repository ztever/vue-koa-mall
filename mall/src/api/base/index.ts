/**
 * axios 实例
 * @author tao.zong
 * @day 2020.3.24
 * @lastModifyAuthor tao.zong
 * @lastUpdate 2020.3.24
 */

import axios from "axios";
import { BASE_URL } from "@/config/config";
import { responseResolve, errorResolve, requestResolve } from "./interceptors";

export const request = axios.create({
  baseURL: BASE_URL,
  timeout: 15000
});

request.defaults.headers.post["Content-Type"] = "application/json";

request.interceptors.response.use(responseResolve, errorResolve);
request.interceptors.request.use(requestResolve, error => {
  // 非200请求
  return Promise.reject(error);
});
