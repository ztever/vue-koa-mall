import actions from "../actions/user_action";
import mutations from "../mutations/user_mutation";
import getters from "../getters/user_getter";

interface UserInfo {
  user_name: string;
  nick_name: string;
  icon: string;
  telephone: number;
}

interface StateInterface {
  token: string;
  user_info: UserInfo;
}

type stateType = () => StateInterface;

export const state: stateType = () => ({
  token: "",
  user_info: {
    user_name: "",
    nick_name: "",
    icon: "",
    telephone: 0
  }
});
export default {
  state,
  actions,
  mutations,
  getters
};
