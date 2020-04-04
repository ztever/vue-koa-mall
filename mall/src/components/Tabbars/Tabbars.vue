<template>
  <!-- <div id="tab-bars"> -->
  <Tabbar :fixed="false" v-model="active" @change="tabChange">
    <TabbarItem
      v-for="(item, index) in ItemList"
      :key="'tab-index-' + index"
      :icon="item.icon"
      >{{ item.text }}</TabbarItem
    >
  </Tabbar>
  <!-- </div> -->
</template>

<script lang="ts">
import { Component, Vue, Watch } from "vue-property-decorator";
import { Tabbar, TabbarItem } from "vant";
@Component({
  components: { Tabbar, TabbarItem }
})
export default class Tabbars extends Vue {
  private active: number = 0;
  private ItemList: any = [
    {
      path: "/home/main",
      name: "main",
      text: "Main",
      icon: "home-o",
      transitionName: "forward"
    },
    {
      path: "/home/list",
      name: "list",
      text: "List",
      icon: "search",
      transitionName: "forward"
    },
    {
      path: "/home/cart",
      name: "cart",
      text: "Cart",
      icon: "shopping-cart-o",
      transitionName: "forward"
    },
    {
      path: "/home/setting",
      name: "setting",
      text: "Setting",
      icon: "setting-o",
      transitionName: "up"
    }
  ];

  private tabChange(val: number) {
    const item: any = this.ItemList[val];
    this.$router.push({
      name: item.name,
      query: {
        routerTransition: item.transitionName
      }
    });
  }

  @Watch("$route", { immediate: true })
  private watchRoute(val: any) {
    switch (val.name) {
      case "list":
        this.active = 1;
        break;
      case "cart":
        this.active = 2;
        break;
      case "setting":
        this.active = 3;
        break;
      default:
        this.active = 0;
        return;
    }
  }
}
</script>

<style scoped lang="scss"></style>
