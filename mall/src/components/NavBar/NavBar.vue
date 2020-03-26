<template>
  <header
    :class="{
      transparent: transparent,
      'flow-layout': flowLayout,
      'back-white': backWhite
    }"
  >
    <div class="header-fixed" :class="[border ? 'border' : '']">
      <div class="header-inner">
        <!-- Left -->
        <div href="javascript:;" class="slot-left slot" @click="clickLeft">
          <slot v-if="!leftType" name="left"></slot>
          <i v-else-if="leftType === 'close'" class="icon-app_close_white"></i>
          <i v-else-if="leftType === 'back'" class="icon-app_back"></i>
          <i
            v-else-if="leftType === 'back-white'"
            class="icon-app_expend_s"
          ></i>
        </div>
        <!-- Mid -->
        <div class="slot-mid slot" @click="clickMid">
          <slot v-if="slotMidShow" name="mid"></slot>
          <h1 v-else :style="{ color: titleColor }">{{ title }}</h1>
        </div>
        <!-- Right -->
        <div href="javascript:;" class="slot-right slot" @click="clickRight">
          <div v-if="showCoin" class="coin-num">
            <img src="@/assets/icons-file/sku/coins.png" />
            <span>{{ totalCoin | format }}</span>
          </div>
          <slot v-else name="right"></slot>
        </div>
      </div>
    </div>
  </header>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component({
  components: {}
})
export default class NavBar extends Vue {
  @Prop({ default: false })
  private transparent?: boolean;
  @Prop({ default: false })
  private border?: boolean;
  @Prop({ default: "" })
  private leftType?: string;
  @Prop({ default: false })
  private leftFork?: boolean;
  @Prop({ default: false })
  private flowLayout?: boolean;
  @Prop({ default: false })
  private backWhite?: boolean;
  @Prop({ default: false })
  private showCoin?: boolean;
  @Prop({ default: "" })
  private title?: string;
  @Prop({ default: "" })
  private titleColor?: string;

  get slotMidShow() {
    return this.$slots.mid;
  }

  private clickLeft() {
    this.$emit("clickLeft");
  }

  private clickMid() {
    this.$emit("clickMid");
  }

  private clickRight() {
    this.$emit("clickRight");
  }
}
</script>
<style src="./nav_bar.scss" scoped lang="scss"></style>
