<template>
  <section id="main">
    <div class="slider-bg"></div>
    <SearchFiled />
    <Scroller>
      <MainTop></MainTop>
      <JdHome></JdHome>
    </Scroller>
  </section>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Scroller from "@/components/Scroller/Scroller.vue";
import SearchFiled from "./SearchFiled/SearchFiled.vue";

import MainTop from "./MainTop/MainTop.vue";
import JdHome from "./JdHome/JdHome.vue";
@Component({
  components: { Scroller, SearchFiled, MainTop, JdHome }
})
export default class Main extends Vue {}
</script>

<style scoped lang="scss">
#main {
  flex: 1;
  width: 100%;
  @include flex-column-center;
  .slider-bg {
    background-image: linear-gradient(0deg, #f1503b, #c82519 50%);
    width: 150%;
    position: absolute;
    left: -25%;
    top: 0;
    height: 150px;
    border-bottom-left-radius: 100%;
    z-index: 0;
    border-bottom-right-radius: 100%;
  }
}
</style>
