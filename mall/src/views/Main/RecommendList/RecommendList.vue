<template>
  <section class="recommend-list">
    <img
      class="title-img"
      src="https://img11.360buyimg.com/jdphoto/jfs/t1/31601/22/15554/14040/5cc2a86fEbdb1098b/88174b36f85283b6.png"
      alt=""
    />
    <RecommendItem
      v-for="item in recommendList"
      :key="'recommend-item-' + item.id"
      :item="item"
    />
  </section>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import RecommendItem from "./RecommendItem/RecommendItem.vue";
@Component({
  components: { RecommendItem }
})
export default class RecommendList extends Vue {
  @Prop()
  private recommendList: any;
}
</script>

<style scoped lang="scss">
.recommend-list {
  margin: 16px 8px 0;
  // background: #fff;
  @include flex-row-around;
  flex-wrap: wrap;
  .title-img {
    width: 100%;
  }
}
</style>
