import { Toast } from "vant";
import { store, router } from "@/main";
import { GETTER_TOKEN } from "@/store/constants/user";
const handleRequest = (config: any) => {
  // 如果有token，带上token
  const token = store.getters[GETTER_TOKEN];
  if (token) {
    config.headers["token"] = token;
  }
  return config;
};

export const responseResolve = (response: any) => {
  try {
    const { data } = response;
    const { code } = data;

    if (code === 200) {
      return data.data;
    } else {
      Toast.fail(`${data.message}`);
      if (code === 20006 || code === 20007) {
        // setTimeout(() => {
        //   // const href = location.hash ? "/#/login" : "/login";
        //   // location.href = href;

        // }, 1000);
        router.replace({
          name: "login",
          query: {
            routerTransition: "up"
          }
        });
        Toast.fail("账号信息过期了，请重新登陆");
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
