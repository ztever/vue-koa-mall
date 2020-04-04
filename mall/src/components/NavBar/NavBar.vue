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
          <Icon :name="leftIconName" :class="leftType" />
        </div>
        <!-- Mid -->
        <div class="slot-mid slot" @click="clickMid">
          <slot v-if="slotMidShow" name="mid"></slot>
          <h1 v-else :style="{ color: titleColor }">{{ title }}</h1>
        </div>
        <!-- Right -->
        <div href="javascript:;" class="slot-right slot" @click="clickRight">
          <slot name="right"></slot>
        </div>
      </div>
    </div>
  </header>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";
import { Icon } from "vant";
@Component({
  components: { Icon }
})
export default class NavBar extends Vue {
  @Prop({ default: false })
  private transparent?: boolean;
  @Prop({ default: false })
  private border?: boolean;
  @Prop({ default: "" })
  private leftType?: string; // cross --> close
  @Prop({ default: false })
  private leftFork?: boolean;
  @Prop({ default: false })
  private flowLayout?: boolean;
  @Prop({ default: false })
  private backWhite?: boolean;
  @Prop({ default: "" })
  private title?: string;
  @Prop({ default: "#000" })
  private titleColor?: string;

  get leftIconName() {
    return this.leftType === "close" ? "cross" : "down";
  }

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
