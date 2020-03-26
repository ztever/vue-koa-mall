import localForage from "localforage";
import VuexPersistence from "vuex-persist";

// const persistModules: string[] = [
//   "insUserInfoModule",
//   "insUserMediaModule",
//   "gxUserInfoModule",
//   "gxSettingModule"
// ];

export default new VuexPersistence({
  storage: localForage,
  strictMode: false,
  asyncStorage: true
  // modules: persistModules,
});
