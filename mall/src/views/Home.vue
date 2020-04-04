<template>
  <div id="home">
    <div class="home-content">
      <router-view />
    </div>
    <Tabbars></Tabbars>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Tabbars from "@/components/Tabbars/Tabbars.vue";
@Component({
  components: { Tabbars }
})
export default class Home extends Vue {}
</script>

<style scoped lang="scss">
#home {
  width: 100%;
  height: 100%;
  @include flex-column-center;
  .home-content {
    flex: 1;
    width: 100%;
  }
}
</style>
