<template>
  <section id="list">
    <!-- <form action="" enctype="multipart/form-data"> -->
    <form action="">
      <input @change="inputChange" capture="camera" type="file" name="" id="" />
    </form>
    <br />
    <br />
    <br />
    <p>模拟formdata上传文件</p>
    <input @change="fileChange" capture="camera" type="file" name="" id="" />
  </section>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { canvasCompress } from "@/utils/compress_canvas/compress_canvas";
import { upload_file, form_upload } from "@/api/upload";
@Component({
  components: {}
})
export default class List extends Vue {
  private inputChange(val: any) {
    const formda = new FormData();
    formda.append("profice_pic", val.target.files[0]);
    upload_file(formda);
  }

  private getFromdata = (
    $name: any,
    $mimetype: any,
    $content: any,
    boundary: string
  ) => {
    const crlf = "\r\n";
    const separator = "--" + boundary;
    const footer = separator + "--" + crlf;

    let multipart: any = "";
    multipart = [
      separator + crlf,
      'Content-Disposition: form-data; name="' +
        [$name] +
        '"; filename="profile_pic"' +
        crlf,
      "Content-Type: image/jpeg" + crlf,
      crlf,
      [$content] + crlf,
      footer
    ].join("");
    return multipart;
  };

  private handleFormData = (data: any, boundary: string) => {
    const profile_pic = atob(data.split(",")[1]);
    return this.getFromdata("profile_pic", "image/jpeg", profile_pic, boundary);

    //     return `--${boundary}
    // Content-Disposition: form-data; name="profile_pic"; filename="profile_pic"
    // Content-Type: multipart/form-data

    // ${profile_pic}
    // --${boundary}--`;
  };

  private async fileChange(val: any) {
    const boundary = "--webkitbounderyaskdfaklsfakejkg";
    const headers = {
      "content-type": `multipart/form-data; boundary=${boundary}`
    };
    const file = val.target.files[0];

    const compressData = await canvasCompress(file);
    const body = this.handleFormData(compressData, boundary);
    form_upload(headers, body);
  }
}
</script>

<style scoped lang="scss">
#list {
  flex: 1;
}
</style>
