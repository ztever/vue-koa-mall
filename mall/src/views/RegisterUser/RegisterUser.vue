<template>
  <div id="register-user">
    <NavBar
      leftType="close"
      transparent="true"
      title="注册新用户"
      @clickLeft="clickBack"
    ></NavBar>
    <Form @submit="onSubmit">
      <Field
        v-model="username"
        name="user_name"
        label="用户名"
        placeholder="用户名"
        left-icon="contact"
        :rules="[{ required: true, message: '请填写用户名' }]"
      />

      <Field
        v-model="telephone"
        name="telephone"
        label="手机号"
        placeholder="手机号"
        left-icon="phone-o"
        :rules="[{ required: true, message: '请填写手机号' }]"
      />
      <Field
        v-model="password"
        type="password"
        name="password"
        label="密码"
        placeholder="请输入密码"
        left-icon="info-o"
        right-icon="eye-o"
        :rules="[{ required: true, message: '请填写密码' }]"
      />
      <Field name="icon" label="图像">
        <template #input>
          <RadioGroup v-model="icon" direction="horizontal">
            <Radio v-for="(item, index) in iconList" :key="index" :name="item"
              ><img class="icon" :src="item"
            /></Radio>
          </RadioGroup>
        </template>
      </Field>
      <Button round block type="info" native-type="submit">
        提交
      </Button>
    </Form>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { Form, Button, Field, RadioGroup, Radio } from "vant";
import { Action } from "vuex-class";
import { REGISTER_USER } from "@/store/constants/user";
import NavBar from "@/components/NavBar/NavBar.vue";

@Component({
  components: {
    Form,
    Button,
    Field,
    RadioGroup,
    Radio,
    NavBar
  }
})
export default class RegisterUser extends Vue {
  @Action(REGISTER_USER)
  private registerUser: any;

  private username: string = "";
  private telephone: string = "";
  private password: string = "";
  private iconList: string[] = [
    "http://bpic.588ku.com/element_origin_min_pic/13/03/20/1656e56cdfe1ea2.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524250&di=2b95391fb8fb74cb7b5ff8bc1c538e3b&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F17%2F03%2F09%2F660242394cd38a9ecda874003c3abc95.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524247&di=ac5f970f58291cd8ca90bdef2d178282&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F20%2F1533299754-wCgQaZOltE.jpg"
  ];
  private icon: string = this.iconList[0];
  private async onSubmit(values: any) {
    try {
      await this.registerUser(values);
    } catch (error) {
      //
    }
  }
  private clickBack() {
    this.$router.go(-1);
  }
}
</script>

<style scoped lang="scss">
#register-user {
  width: 100%;
  height: 100%;

  .van-form {
    padding: 20px 7% 0;
    box-sizing: border-box;
  }
  .icon {
    width: 50px;
  }
}
</style>
