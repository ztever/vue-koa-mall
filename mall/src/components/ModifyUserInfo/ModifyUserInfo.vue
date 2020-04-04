<template>
  <Popup
    v-model="showPopup"
    @close="closePopup"
    closeable
    class="user-info-popup"
  >
    <Form @submit="onSubmit">
      <Field
        v-model="nickName"
        name="nick_name"
        label="修改昵称"
        placeholder="修改昵称"
        left-icon="contact"
        :rules="[{ required: true, message: '请填写昵称' }]"
      />
      <Field name="icon" label="修改图像">
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
  </Popup>
</template>

<script lang="ts">
import { Component, Vue, Prop, Watch, Emit } from "vue-property-decorator";
import { Form, Button, Field, RadioGroup, Radio, Popup } from "vant";

@Component({
  components: { Form, Button, Field, RadioGroup, Radio, Popup }
})
export default class ModifyUserInfo extends Vue {
  @Prop()
  private value: boolean = false;
  @Prop()
  private userInfo: any;
  private showPopup: boolean = false;

  private nickName: string = "";
  private icon: string = "";
  private iconList: string[] = [
    "http://bpic.588ku.com/element_origin_min_pic/13/03/20/1656e56cdfe1ea2.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524250&di=2b95391fb8fb74cb7b5ff8bc1c538e3b&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F17%2F03%2F09%2F660242394cd38a9ecda874003c3abc95.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524247&di=ac5f970f58291cd8ca90bdef2d178282&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F20%2F1533299754-wCgQaZOltE.jpg"
  ];

  @Watch("value")
  private showChange(val: boolean) {
    this.showPopup = val;
  }
  @Watch("userInfo", { immediate: true })
  private userInfoChange(val: any) {
    const { nick_name, icon } = val;
    this.nickName = nick_name;
    this.icon = icon;
  }
  @Emit("input")
  private closePopup() {
    return false;
  }

  @Emit("onSubmit")
  private onSubmit(values: any) {
    return values;
  }
}
</script>

<style scoped lang="scss">
.user-info-popup {
  &.van-popup--center {
    width: 80%;
    box-sizing: border-box;
    padding: 20px;
    border-radius: 8px;
    .icon {
      width: 40px;
    }
  }
}
</style>
