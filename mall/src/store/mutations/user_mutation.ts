import { UPDATE_USER_INFO, UPDATE_TOKEN } from "../constants/user";
export default {
  [UPDATE_USER_INFO](state: any, payLoad: any) {
    const { user_name, nick_name, icon } = payLoad;
    state.user_info = {
      user_name: user_name || state.user_info.user_name,
      nick_name,
      icon
    };
  },
  [UPDATE_TOKEN](state: any, payLoad: any) {
    state.token = payLoad;
  }
};
