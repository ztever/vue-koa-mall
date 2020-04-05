import {
  UPDATE_USER_INFO,
  UPDATE_TOKEN,
  DELETE_USER_INFO
} from "../constants/user";
export default {
  [UPDATE_USER_INFO](state: any, payLoad: any) {
    const { user_name, nick_name, icon, telephone } = payLoad;
    state.user_info = {
      user_name: user_name || state.user_info.user_name,
      nick_name,
      icon,
      telephone: telephone || state.user_info.telephone
    };
  },
  [UPDATE_TOKEN](state: any, payLoad: any) {
    state.token = payLoad;
  },
  // eslint-disable-next-line
  [DELETE_USER_INFO](state: any) {
    state = {
      token: "",
      user_info: {
        user_name: "",
        nick_name: "",
        icon: "",
        telephone: 0
      }
    };
  }
};
