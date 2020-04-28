<template>
  <div class="jd-item" :class="{ big: data && data.src.length > 1 }">
    <p class="title" :style="getTitileStyle(data.data_color)">
      {{ data.title }}
    </p>
    <p class="spec">{{ data.spec }}</p>
    <div class="images">
      <img
        class="img"
        v-for="(item, index) in data.src"
        :key="index"
        :src="item"
        alt=""
      />
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
@Component({
  components: {}
})
export default class JdItem extends Vue {
  @Prop()
  private data: any;

  private getTitileStyle(color: string) {
    const colorList = color.split(",");
    return colorList.length > 1
      ? {
          background: `linear-gradient(90deg, ${colorList[0]},${colorList[1]})`,
          "webkit-background-clip": "text",
          color: "transparent"
        }
      : {
          color: colorList[0]
        };
  }
}
</script>

<style scoped lang="scss">
.jd-item {
  width: 25%;
  padding: 6px 8px;
  box-sizing: border-box;
  position: relative;
  @include border-right();
  &.big {
    width: 50%;
  }
  .title {
    font-size: 16px;
  }
  .spec {
    font-size: 10px;
    color: #666771;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .images {
    padding: 8px 0;
    @include flex-row-around;
    .img {
      width: 59px;
      height: 59px;
    }
  }
}
</style>
