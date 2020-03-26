import { UPDATE_USER_TOKEN } from "../constants/user";
export default {
  [UPDATE_USER_TOKEN](state: any, payLoad: any) {
    const { token, user_name, nick_name } = payLoad;
    state.token = token;
    state.user_name = user_name;
    state.nick_name = nick_name;
  }
};
