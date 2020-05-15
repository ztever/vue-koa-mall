<template>
  <div id="cart">
    Cart
    <div @click="MD5">
      get md5
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { Md5, HmacSHA512 } from "@/utils/crypto_js/crypto_js";
@Component({
  components: {}
})
export default class Cart extends Vue {
  private MD5() {
    HmacSHA512();
  }
}
</script>

<style scoped lang="scss">
#cart {
  flex: 1;
}
</style>
