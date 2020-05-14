<template>
  <!-- 入口 -->
  <Swipe class="server-list" v-if="serverList && serverList.length > 0">
    <SwipeItem>
      <div class="list-box">
        <a
          v-for="item in serverList.slice(0, 10)"
          :key="'item' + item.id"
          class="item"
          href="javascript:;"
        >
          <img class="icon" :src="item.icon" alt="" />
          <p class="text">{{ item.name }}</p>
        </a>
      </div>
    </SwipeItem>
    <SwipeItem>
      <div class="list-box">
        <a
          v-for="item in serverList.slice(10, 20)"
          :key="'item' + item.id"
          class="item"
          href="javascript:;"
        >
          <img class="icon" :src="item.icon" alt="" />
          <p class="text">{{ item.name }}</p>
        </a>
      </div>
    </SwipeItem>
  </Swipe>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { Swipe, SwipeItem } from "vant";
import { get_nav_list } from "@/api/home/home";

@Component({
  components: { Swipe, SwipeItem }
})
export default class ServerList extends Vue {
  private serverList: any = [];
  private async mounted() {
    try {
      this.serverList = await get_nav_list();
    } catch (error) {
      console.log("this.serverList error", error);
    }
  }
}
</script>

<style scoped lang="scss">
.server-list {
  padding: 8px 0 16px;
  background: #fff;
  .van-swipe-item {
    display: flex;
    .list-box {
      @include flex-row-center;
      flex-wrap: wrap;
    }
    .item {
      width: 20%;
      box-sizing: border-box;
      padding: 5px 12px;
      @include flex-column-center;
      .icon {
        width: 80%;
      }
      .text {
        font-size: 8px;
        color: #333;
        text-align: center;
        margin-top: 6px;
      }
    }
  }
  .van-swipe__indicators {
    bottom: -6px;
  }
}
</style>
