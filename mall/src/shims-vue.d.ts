//这个文件不能有两个 module ，可能回造成.vue无法识别，因此新建了一个vue.d.ts
import Vue from "vue";

declare module "vue/types/vue" {
  interface Vue {
    $navigation: any;
  }
}

declare module "exif-js";
