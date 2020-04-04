<template>
  <div id="setting">
    <NavBar transparent="true" title="Setting" @clickRight="clickRight">
      <Icon slot="right" name="edit" />
    </NavBar>
    <div class="setting-content">
      <div class="icon">
        <img :src="user_info.icon" alt="" />
      </div>
      <div class="user-name">
        <p class="lable">user name:</p>
        {{ user_info.user_name }}
      </div>
      <div class="nick-name">
        <p class="lable">nick name:</p>
        {{ user_info.nick_name }}
      </div>
    </div>
    <ModifyUserInfo
      @onSubmit="onSubmit"
      :user-info="user_info"
      v-model="show"
    />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { Getter, Action } from "vuex-class";
import NavBar from "@/components/NavBar/NavBar.vue";
import { GETTER_USER_INFO, PUT_USER_INFO } from "@/store/constants/user";
import { Icon } from "vant";
import ModifyUserInfo from "@/components/ModifyUserInfo/ModifyUserInfo.vue";
@Component({
  components: { NavBar, Icon, ModifyUserInfo }
})
export default class Setting extends Vue {
  @Getter(GETTER_USER_INFO)
  private user_info: any;
  @Action(PUT_USER_INFO)
  private putUserInfo: any;
  private show: boolean = false;

  private clickRight() {
    this.show = true;
  }

  private async onSubmit(values: any) {
    try {
      await this.putUserInfo(values);
      this.show = false;
      this.$toast.success("更新成功");
    } catch (error) {
      // console.log("onSubmit error", error);
    }
  }

  private mounted() {
    console.log("user_info", this.user_info);
  }
}
</script>

<style scoped lang="scss">
#setting {
  width: 100%;
  height: 100%;
  .slot-right {
    .van-icon-edit {
      color: $black;
      font-size: 20px;
    }
  }
  .setting-content {
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
    @include flex-column-center;
    .icon {
      width: 100px;
      height: 100px;
      img {
        width: 100%;
      }
    }
    .nick-name,
    .user-name {
      width: 100%;
      margin-top: 20px;
      @include flex-row-center;
      justify-content: flex-start;
      background: #f8f8f8;

      .lable {
        width: 100px;
        background: #fff;
      }
    }
  }
}
</style>
