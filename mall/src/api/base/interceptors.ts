// import WebLocalStorage from "utils/sessionStorage/web_storage";
import { Toast } from "vant";
const handleRequest = (config: any) => {
  // 如果有token，带上token
  // const token = WebLocalStorage.get("token");
  // if (token) {
  //   config.headers["token"] = token;
  // }
  return config;
};

export const responseResolve = (response: any) => {
  try {
    const { data } = response;
    const { code } = data;

    if (code === 200) {
      return data.data;
    } else {
      // Toast.fail(`${meta.message}`);
      // if (meta.code === 20001) {
      //   setTimeout(() => {
      //     location.href = "/login";
      //   }, 1000);
      //   Toast.fail("账号信息过期了，请重新登陆");
      // } else {
      //   Toast.fail(`${meta.message}`);
      // }
      if (code === 205) {
        Toast.fail(data.message);
      }
      return Promise.reject(response);
    }
  } catch (error) {
    return Promise.reject(error);
  }
};

export const errorResolve = (error: any) => {
  Toast.fail(`${error.message}`);
  return Promise.reject(error);
};

export const requestResolve = (config: any) => {
  try {
    return handleRequest(config);
  } catch (error) {
    return Promise.reject(error);
  }
};
