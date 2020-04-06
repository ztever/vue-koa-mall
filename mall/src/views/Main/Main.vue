<template>
  <div id="main">
    <div v-if="code" v-html="code"></div>
    <div @click="getCaptcha">get_captcha</div>
    <br />
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
      const result: any = await get_captcha();
      this.code = result.svg;
    } catch (error) {
      //
    }
  }
}
</script>

<style scoped lang="scss"></style>
