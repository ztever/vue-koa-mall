import { GetterTree } from "vuex";
import { GETTER_TOKEN, GETTER_USER_INFO } from "@/store/constants/user";

// import * as types from "@/store/constants/index_types";
const Getters: GetterTree<any, any> = {
  [GETTER_TOKEN](state: any) {
    return state.token;
  },
  [GETTER_USER_INFO](state: any) {
    return state.user_info;
  }
};
export default Getters;
