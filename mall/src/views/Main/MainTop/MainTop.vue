<template>
  <section id="main-top">
    <div class="slider-bg"></div>
    <!-- 轮播 -->
    <Swipe :autoplay="3000" class="banner-swiper" v-if="crauserList.length > 0">
      <SwipeItem v-for="item in crauserList" :key="item.id">
        <a class="button" href="javascript:;">
          <img class="crauser-img" :src="item.src" alt="" />
        </a>
      </SwipeItem>
    </Swipe>
    <!-- 入口 -->
    <ServerList />
  </section>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { get_banner } from "@/api/home/home";
import { Swipe, SwipeItem } from "vant";
import ServerList from "./ServerList/ServerList.vue";
@Component({
  components: { Swipe, SwipeItem, ServerList }
})
export default class MainTop extends Vue {
  private crauserList: any = [];

  private async mounted() {
    this.crauserList = await get_banner();
  }
}
</script>

<style scoped lang="scss">
#main-top {
  width: 100%;
  overflow: hidden;
  padding-top: 52px;
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
  .banner-swiper {
    padding-top: 8px;
    .van-swipe-item {
      width: 100%;
      .button {
        width: calc(100% - 32px);
        display: block;
        margin: 0 auto;
        border-radius: 8px;
        overflow: hidden;
        height: 150px;
        .crauser-img {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }
      }
    }
  }
}
</style>
