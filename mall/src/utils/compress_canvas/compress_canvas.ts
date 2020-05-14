import EXIF from "exif-js";
/*
 * 上传的文件对象 file文件对象，maxHeight文件的最大高度 maxWidth文件的最大宽度 quality代表质量 0.95的压缩比例与原始比例一致
 * file，文件
 * */
export const canvasCompress: any = (
  file: any,
  maxHeight: number = 2000,
  maxWidth: number = 2000,
  quality: number = 0.9
) => {
  return new Promise(async (resolve, reject) => {
    try {
      const reader: any = new FileReader();
      reader.readAsDataURL(file);

      const img: any = new Image();

      // 获取照片的拍摄方向
      let orient: any = null;
      reader.onload = () => {
        img.src = reader.result;
      };

      // 缩放图片需要的canvas
      let canvas: any = document.createElement("canvas");
      const context: any = canvas.getContext("2d");
      img.onload = async function() {
        orient = await getPhotoOrientation(file);

        const originWidth = this.width;
        const originHeight = this.height;
        let targetWidth = originWidth;
        let targetHeight = originHeight;
        // 图片尺寸的处理
        if (originWidth > maxWidth || originHeight > maxHeight) {
          if (originWidth / originHeight > maxWidth / maxHeight) {
            // 更宽，按照宽度限定尺寸
            targetWidth = maxWidth;
            targetHeight = Math.round(maxWidth * (originHeight / originWidth));
          } else {
            targetHeight = maxHeight;
            targetWidth = Math.round(maxHeight * (originWidth / originHeight));
          }
        }
        // 获取最小宽度
        const minWidth =
          targetWidth > targetHeight ? targetHeight : targetWidth;

        // canvas对图片进行缩放
        canvas.width = minWidth;
        canvas.height = minWidth;

        // 清除画布
        context.clearRect(0, 0, targetWidth, targetHeight);
        // 判断图片的方向是否正确，不正确则处理
        if (orient && orient !== 1) {
          switch (orient) {
            case 6:
              context.rotate(Math.PI / 2);
              context.drawImage(
                img,
                0,
                -targetHeight,
                targetWidth,
                targetHeight
              );
              break;
            case 3:
              context.rotate(Math.PI);
              context.drawImage(
                img,
                -targetWidth,
                -targetHeight,
                targetWidth,
                targetHeight
              );
              break;
            case 8:
              // canvas.width = targetHeight;
              // canvas.height = targetWidth;
              context.rotate((3 * Math.PI) / 2);
              context.drawImage(
                img,
                -targetWidth,
                0,
                targetWidth,
                targetHeight
              );
              break;
          }
        } else {
          // 图片压缩
          context.drawImage(img, 0, 0, targetWidth, targetHeight);
        }
        const dataUrl = canvas.toDataURL("image/jpeg", quality);
        resolve(dataUrl);
        // 成功之后删除创建出来的canvas元素
        canvas = null;
      };
    } catch (error) {
      reject(error);
      throw new Error(error);
    }
  });
};

/*
 * 获取照片的元信息（拍摄方向）
 * */

const getPhotoOrientation: any = (img: any) => {
  return new Promise(async (resolve, reject) => {
    try {
      let result: any;
      await EXIF.getData(img, function(this: any) {
        result = EXIF.getTag(this, "Orientation");
        resolve(result);
      });
    } catch (error) {
      reject(error);
    }
  });
};

export const dataURLtoFile = (dataurl: any, filename = "profile_pic") => {
  //将base64转换为文件
  const arr = dataurl.split(",");
  const mime = arr[0].match(/:(.*?);/)[1];
  const bstr = atob(arr[1]);
  let n = bstr.length;
  const u8arr = new Uint8Array(n);
  while (n--) {
    u8arr[n] = bstr.charCodeAt(n);
  }
  return new File([u8arr], filename, { type: mime });
};
