import { GetterTree } from "vuex";
import { GETTER_TOKEN } from "@/store/constants/user";

// import * as types from "@/store/constants/index_types";
const Getters: GetterTree<any, any> = {
  [GETTER_TOKEN](state) {
    return state.token;
  }
};
export default Getters;
