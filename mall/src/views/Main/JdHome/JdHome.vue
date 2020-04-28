<template>
  <section id="jd-home">
    <!-- 京东小院 -->
    <img
      class="title-img"
      src="https://m.360buyimg.com/mobilecms/s750x80_jfs/t1/104532/40/2146/24646/5dcc2957E83954979/5ec2bb870605dcb3.png!q70.jpg.dpg"
      alt=""
    />
    <section v-if="dataList.length > 0" class="jd-home-box">
      <div class="jd-home-container">
        <JdItem
          v-for="item in dataList.slice(0, 6)"
          :data="item"
          :key="'home' + item.id"
        />
      </div>
    </section>
    <!-- 每日逛 -->
    <img
      class="title-img"
      src="https://m.360buyimg.com/mobilecms/s750x80_jfs/t1/103080/1/6315/23804/5df25d68E3eae6519/deef719dfdfe2844.png!q70.jpg.dpg"
      alt=""
    />
    <section v-if="dataList.length > 0" class="jd-home-box">
      <div class="jd-home-container">
        <JdItem
          v-for="item in dataList.slice(6)"
          :data="item"
          :key="'daliy' + item.id"
        />
      </div>
    </section>
  </section>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { get_jd_home } from "@/api/home/home";
import JdItem from "./JdItem/JdItem.vue";
@Component({
  components: { JdItem }
})
export default class JdHome extends Vue {
  private dataList: any = [];
  private async mounted() {
    this.dataList = await get_jd_home();
  }
}
</script>

<style scoped lang="scss">
#jd-home {
  width: 100%;
  .title-img {
    width: 100vw;
  }
  .jd-home-box {
    display: flex;
    margin: 0 12px;
    background: #fff;
    border-radius: 8px;
    .jd-home-container {
      width: 100%;
      @include flex-row-center;
      flex-wrap: wrap;
    }
  }
}
</style>
