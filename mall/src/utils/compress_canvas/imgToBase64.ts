export const getBase64 = (url: string) => {
  return new Promise(async resolve => {
    try {
      //width、height调用时传入具体像素值，控制大小 ,不传则默认图像大小
      const getBase64Image = (img: any, width?: any, height?: any) => {
        let canvas: any = document.createElement("canvas");
        canvas.width = width ? width : img.width;
        canvas.height = height ? height : img.height;

        const ctx: any = canvas.getContext("2d");
        ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
        const dataURL = canvas.toDataURL("image/png");
        resolve(dataURL);
        canvas = null;
      };
      const image = new Image();
      image.crossOrigin = "";
      image.src = url;
      if (url) {
        image.onload = function() {
          getBase64Image(image);
        };
      }
    } catch (e) {
      resolve(null);
    }
  });
};
