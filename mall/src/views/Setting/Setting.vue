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
      <div class="telephone">
        <p class="lable">telephone:</p>
        {{ user_info.telephone }}
      </div>
    </div>
    <Button @click="logOut" type="info">退出登录</Button>
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
import {
  GETTER_USER_INFO,
  PUT_USER_INFO,
  LOGOUT_USER
} from "@/store/constants/user";
import { Icon, Button } from "vant";
import ModifyUserInfo from "@/components/ModifyUserInfo/ModifyUserInfo.vue";
@Component({
  components: { NavBar, Icon, ModifyUserInfo, Button }
})
export default class Setting extends Vue {
  @Getter(GETTER_USER_INFO)
  private user_info: any;
  @Action(PUT_USER_INFO)
  private putUserInfo: any;
  @Action(LOGOUT_USER)
  private logoutUser: any;
  private show: boolean = false;

  private clickRight() {
    this.show = true;
  }

  private async onSubmit(values: any) {
    try {
      await this.putUserInfo(values);
      this.show = false;
      this.$toast.success("更新用户信息成功");
    } catch (error) {
      this.$toast.fail("更新用户信息失败");
    }
  }

  private async logOut() {
    try {
      await this.logoutUser();
      this.$toast.success("登出成功");
    } catch (error) {
      this.$toast.fail("登出失败");
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
  .van-button {
    margin: 0 auto;
    display: block;
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
        height: 100%;
        width: 100%;
        object-fit: cover;
      }
    }
    .nick-name {
      margin-top: 20px;
    }
    .nick-name,
    .user-name,
    .telephone {
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
