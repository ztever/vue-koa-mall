<template>
  <div id="login">
    <img class="logo" src="@/assets/icons/logo/logo-cat.png" />
    <Form @submit="onSubmit">
      <Field
        v-model="user_name"
        name="user_name"
        label="用户名"
        placeholder="用户名/手机号"
        left-icon="contact"
        right-icon="warning-o"
        :rules="[{ required: true, message: '请填写用户名/手机号' }]"
      />
      <Field
        v-model="password"
        type="password"
        name="password"
        label="密码"
        placeholder="请输入密码"
        left-icon="closed-eye"
        right-icon="warning-o"
        :rules="[{ required: true, message: '请填写密码' }]"
      />
      <van-button round block type="info" native-type="submit">
        登录
      </van-button>
    </Form>
    <div class="bottom">
      <a href="javascript:;">忘记密码</a>
      <a @click="goToRegister" href="javascript:;">注册新用户</a>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { Action } from "vuex-class";
import { USER_LOGIN_ACTION } from "@/store/constants/user";
import { Form, Button, Field } from "vant";

@Component({
  name: "login",
  components: {
    Form,
    Field,
    "van-button": Button
  }
})
export default class Login extends Vue {
  @Action(USER_LOGIN_ACTION)
  private userLogin: any;

  private user_name: string = "";
  private password: string = "";

  private async onSubmit(values: any) {
    try {
      await this.userLogin(values);
    } catch (error) {
      // console.log("login error", error);
    }
  }

  private goToRegister() {
    this.$router.push({
      name: "registeruser",
      query: {
        routerTransition: "up"
      }
    });
  }
}
</script>

<style scoped lang="scss">
#login {
  width: 100%;
  height: 100%;
  padding-top: 80px;
  // background: #fff;
  .logo {
    width: 60px;
    display: block;
    margin: 0 auto 30px;
  }
  .van-form {
    width: 85%;
    margin: 0 auto;
    .van-button {
      margin: 20px auto 20px;
    }
  }
  // @include flex-column-center;
  .bottom {
    width: 85%;
    margin: 0 auto;
    @include flex-space;
    a {
      color: #888;
      font-size: 12px;
    }
  }
}
</style>
