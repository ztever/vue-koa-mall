<template>
  <div class="scroll-fixed">
    <div ref="scrollontainer" class="scroll-container">
      <div
        ref="scrollView"
        class="pull-refresh-track"
        :style="{
          transform: 'translate3d(0px,' + translateY + 'px, 0px)',
          transition: transitionStyle
        }"
        @touchstart="touchStartEvent($event)"
        @touchmove="touchMoveEvent($event)"
        @touchend="touchEndEvent($event)"
      >
        <!-- 下拉刷新 -->
        <div v-if="pullFn" class="pull-refresh_head">
          <div v-show="isBeforeRefresh" class="before-refresh">
            <img
              class="refresh"
              :class="{ rotate: isrefreshIconRotate }"
              :src="refreshIcon"
            />
            <p class="text">{{ refreshText }}</p>
          </div>
          <img v-show="!isBeforeRefresh" class="refreshing" :src="lodingIcon" />
        </div>
        <!-- 主体 -->
        <slot></slot>
        <!-- 上拉加载更多 -->
        <div
          v-if="loadFn && (loadMoreEnded || showLoadingMore)"
          class="loading-finished"
        >
          <p v-if="loadMoreEnded" class="text">{{ endedText }}</p>
          <img v-show="showLoadingMore" class="load-icon" :src="lodingIcon" />
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";

@Component({
  components: {}
})
export default class Scroller extends Vue {
  @Prop()
  private pullFn?: any; // 下拉刷新的方法
  @Prop()
  private loadFn?: any; // 上拉加载更多的方法
  @Prop({ default: "Pull to refresh" })
  private refreshText?: string;
  @Prop({ default: "loading···" })
  private loadingText?: string;
  @Prop({ default: "You've reached the end" })
  private endedText?: string;
  @Prop({
    default: require("@/assets/icons/scroll/loading_3.gif")
  })
  private lodingIcon?: string;
  @Prop({
    default: require("@/assets/icons/scroll/right-icon.png")
  })
  private refreshIcon?: string;

  private translateY: number = 0;
  private moveY: number = 0;
  private container: any;
  private containerHeight: number = 0;
  private isCanLoadMore = true; // 是否能加载更多，避免多次触发加载更多
  private isBeforeRefresh = true; // true 显示pull to fresh false显示loaing
  private isrefreshIconRotate = false; // fresh icon 是否旋转
  private loadMoreEnded = false; // 显示无更多
  private showLoadingMore = false; // 显示加载更多的动画
  private transitionStyle: string = "all 0ms linear 0s";
  private startOffsetX = 0;
  private startOffsetY = 0;

  private touchStartEvent(e: any) {
    // 滑动的时候需要将transition的值改变，不然下拉刷新的时候，滑动不流畅
    this.transitionStyle = "all 0ms linear 0s";
    this.moveY = e.touches[0].clientY;
    this.startOffsetX = e.touches[0].clientX;
  }
  private touchMoveEvent(e: any) {
    const scrollTop = this.container.scrollTop;
    const pageHeight = e.target.getBoundingClientRect().height;
    const nowY = e.touches[0].clientY;
    const offsetY = nowY - this.moveY;
    if (this.startOffsetY === 0) {
      this.startOffsetY = offsetY;
      this.startOffsetX = e.touches[0].clientX - this.startOffsetX;
    }
    // 避免上下滚动的同时出现左右滑动,如果是左右滑动，就不执行下拉刷新或者上拉加载
    if (Math.abs(this.startOffsetY) >= Math.abs(this.startOffsetX)) {
      e.stopPropagation();
    } else {
      return;
    }
    // 判断是否是下拉刷新
    if (scrollTop < 1) {
      if (offsetY >= 0) {
        //下啦刷新的 时候阻止默认滚动
        e.preventDefault();
        //下拉的距离大于100后，距离加大0.2，避免下拉的太多
        this.translateY < 100
          ? (this.translateY += offsetY)
          : (this.translateY += 0.2);
      } else {
        this.translateY > 0
          ? (this.translateY += offsetY)
          : (this.translateY = 0);
      }
      if (this.translateY > 130) {
        //下拉的距离达到130的时候，不在改变位置
        this.translateY = 130;
      }
      if (this.translateY > 50 && !this.isrefreshIconRotate) {
        this.isrefreshIconRotate = true;
      }
    }
    this.moveY = nowY;
    // 判断是否是上拉加载更多 loadMoreEnded为true就意味着已经全部加载完毕了
    if (
      scrollTop + this.containerHeight >= pageHeight - 100 &&
      this.isCanLoadMore &&
      this.loadFn &&
      !this.loadMoreEnded
    ) {
      this.showLoadingMore = true;
      this.isCanLoadMore = false;
      this.loadFn(this.laodDone);
    }
  }
  // 下拉刷新的回调
  private freshDone() {
    this.translateY = 0;
    this.isBeforeRefresh = true;
    this.isrefreshIconRotate = false;
    this.loadMoreEnded = false; // 刷新后，改变loadMoreEnded可以继续加载更多
  }
  // 上拉加载更多的回调函数，如果全部加载完毕拉，需要传入一个true，改变loadMoreEnded，滑动到底部，不会继续加载拉
  private laodDone(end?: boolean) {
    this.isCanLoadMore = true;
    this.showLoadingMore = false;
    end ? (this.loadMoreEnded = true) : void 0;
  }
  private touchEndEvent() {
    // 松开手指后，需要设置transition，下拉刷新返回的动画
    this.startOffsetY = 0;
    this.transitionStyle = "all 300ms linear 0s";
    if (this.translateY >= 50) {
      this.translateY = 50;
      this.isBeforeRefresh = false;
      this.pullFn ? this.pullFn(this.freshDone) : this.freshDone();
    } else if (this.translateY >= 0) {
      this.translateY = 0;
    }
  }

  private mounted() {
    this.$nextTick(() => {
      this.container = this.$refs.scrollontainer;
      this.containerHeight = this.container.offsetHeight;
    });
  }
}
</script>

<style lang="scss" scoped>
.scroll-fixed {
  flex: 1;
  position: relative;
  height: 100%;
  width: 100%;
  overflow: hidden;
}
.scroll-container {
  // 去除滚动条
  width: 110%;
  padding-right: 10%;
  position: absolute;
  top: 0;
  bottom: 0;
  overflow: hidden;
  overscroll-behavior: none;
  overflow-y: auto;
  scroll-behavior: smooth;
  -webkit-overflow-scrolling: touch;
  .pull-refresh-track {
    min-height: 100%;
    display: flex;
    flex-direction: column;
  }

  .pull-refresh_head {
    margin-top: -50px;
    width: 100%;
    height: 50px;
    overflow: hidden;
    color: #969799;
    font-size: 14px;
    text-align: center;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    .before-refresh {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      .refresh {
        width: 16px;
        transform: rotate(90deg);
        transition: 0.2s;
        &.rotate {
          transform: rotate(-90deg);
        }
      }
      .text {
        font-size: 12px;
        line-height: 16px;
      }
    }
    .refreshing {
      width: 30px;
    }
  }
  .loading-finished {
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #969799;
    font-size: 14px;
    .load-icon {
      width: 30px;
    }
  }
}
</style>
