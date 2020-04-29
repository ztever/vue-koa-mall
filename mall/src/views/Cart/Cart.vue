<template>
  <div id="cart">
    Cart
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
@Component({
  components: {}
})
export default class Cart extends Vue {}
</script>

<style scoped lang="scss">
#cart {
  flex: 1;
}
</style>
