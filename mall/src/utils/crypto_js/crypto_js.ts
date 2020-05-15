import CryptoJS from "crypto-js";
const encryption = {
  key_id: "154",
  public_key:
    "e551e6c958bcad6eb4c7a4526e1b0c7b8433a2f7d172f0f91ad785b43e22a832",
  version: "10"
};

// #PWD_INSTAGRAM_BROWSER:10:1589534684:AZpQADhnZSOdw4Cw98+F/niN+QWgMQh3aOZr7rGd0bxjcwlpFn6qnCZBdVi5r29WBtBMPXzp3VcYJvd6LqwHV6UnurGjrbW2TzvLVNOQSans9p7O/KolNuAkN0K4co/KFcLEH37lYHPSYqLb
const pwaprifix = `#PWD_INSTAGRAM_BROWSER:${
  encryption.version
}:${new Date().getTime()}:`;
const password = "zt123456";
export const Md5 = () => {
  console.log("CryptoJS.MD5(password)", CryptoJS.MD5(password).toString());
};

export const Aes = () => {
  console.log(CryptoJS.AES.encrypt(password, encryption.public_key).toString());
};
export const HmacSHA512 = () => {
  console.log(CryptoJS.HmacSHA512(password, encryption.public_key).toString());
};

// // getEncryptedParam('password',n),

// __d(function(g, r, i, a, m, e, d) {
//   'use strict';
//   async function t(t) {
//       if (!1 === i(d[0])._("67") || '' === t)
//           return;
//       r(d[1]).logAttempt();
//       let o;
//       try {
//           const c = await r(d[3])(d[2],"EncryptionUtils")
//             , u = n();
//           o = await c.encryptAndFormat(t,u),
//           r(d[1]).logSuccess()
//       } catch (t) {
//           r(d[1]).logFailure(t)
//       }
//       return null == o && i(d[0])._("104") && (o = c(t)),
//       o
//   }
//   function n() {
//       return Math.floor(Date.now() / 1e3).toString()
//   }
//   function c(t) {
//       const c = n();
//       return i(d[4])(t, c, r(d[4]).formatType.PLAINTEXT)
//   }
//   Object.defineProperty(e, '__esModule', {
//       value: !0
//   }),
//   e.encrypt = t,
//   e.getTimestamp = n,
//   e.formatPlaintextPassword = c,
//   e.getEncryptedParam = async function(n, c, o="enc_") {
//       let u = {}
//         , l = {};
//       if (!i(d[0])._("67"))
//           return Object.freeze({
//               [n]: c
//           });
//       const s = await t(c);
//       null != s && (u = {
//           [`${o}${n}`]: s
//       });
//       return i(d[0])._("106") || (l = {
//           [n]: c
//       }),
//       Object.freeze({
//           ...u,
//           ...l
//       })
//   }
// }, 16384007, [9699442, 16515189, 9633792, 68, 9633797]);

import Base64 from "crypto-js/enc-base64";
import Utf8 from "crypto-js/enc-utf8";
export const sign = (jsonBody: any) => {
  const body = jsonBody || {};
  let bodyString = JSON.stringify(body);
  bodyString = bodyString || "";

  const signBody = (bodystr: string, key1: string, key2: string) => {
    const _key1 = Base64.parse(key1);
    const _key2 = Base64.parse(key2);
    const _bodystr = Utf8.parse(bodystr);

    let sha256: any = CryptoJS.algo.SHA256.create();
    sha256.update(_key1);
    sha256.update(_bodystr);
    let hash: any = sha256.finalize();

    sha256 = CryptoJS.algo.SHA256.create();
    sha256.update(_key2);
    sha256.update(hash);
    hash = sha256.finalize();
    return hash.toString();
  };

  const form: any = {};
  form.ig_sig_key_version = "5";
  form.signed_body = signBody(bodyString, "1111", "2222") + "." + bodyString;
  return form;
};
