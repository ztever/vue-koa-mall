import actions from "../actions/user_action";
import mutations from "../mutations/user_mutation";
import getters from "../getters/user_getter";

export default {
  state: {
    token: "",
    user_info: {
      user_name: "",
      nick_name: "",
      icon: ""
    }
  },
  actions,
  mutations,
  getters
};
