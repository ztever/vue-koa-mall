<template>
  <div id="main">
    <div v-if="code" v-html="code"></div>
    <div @click="getCaptcha">get_captcha</div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { get_captcha } from "@/api/captcha";
@Component({
  components: {}
})
export default class Main extends Vue {
  private code = "";
  private async getCaptcha() {
    try {
      const result = await get_captcha();
      console.log("result", result);
      this.code = result.data;
    } catch (error) {
      //
    }
  }
}
</script>

<style scoped lang="scss"></style>
