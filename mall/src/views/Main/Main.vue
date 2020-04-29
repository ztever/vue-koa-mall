<template>
  <section id="main">
    <SearchFiled :background="background" />
    <Scroller @scrollTop="scrollTopEvent" :loadFn="getData">
      <MainTop></MainTop>
      <JdHome></JdHome>
      <RecommendList :recommendList="recommendList" />
    </Scroller>
  </section>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Scroller from "@/components/Scroller/Scroller.vue";
import SearchFiled from "./SearchFiled/SearchFiled.vue";
import MainTop from "./MainTop/MainTop.vue";
import JdHome from "./JdHome/JdHome.vue";
import RecommendList from "./RecommendList/RecommendList.vue";
import { get_recommend_list } from "@/api/home/home";
@Component({
  components: { Scroller, SearchFiled, MainTop, JdHome, RecommendList }
})
export default class Main extends Vue {
  private background: boolean = false;
  private recommendList: any = [];
  private offset: number = 0;

  private scrollTopEvent(value: number) {
    this.background = value > 30 ? true : false;
  }

  private async getData(done?: any) {
    try {
      const result: any = await get_recommend_list(this.offset);
      if (this.offset === 0) {
        this.recommendList = result.data;
      } else {
        this.recommendList = [...this.recommendList, ...result.data];
      }
      this.offset++;
      this.offset >= result.totalPage ? done(true) : done();
    } catch (error) {
      //
    }
  }

  private async mounted() {
    this.getData();
  }
}
</script>

<style scoped lang="scss">
#main {
  flex: 1;
  width: 100%;
  @include flex-column-center;
  touch-action: none;
}
</style>
