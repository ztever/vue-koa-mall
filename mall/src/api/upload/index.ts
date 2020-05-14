import "whatwg-fetch";
import { UPLOAD_FILE, UPLOAD_FORM_DATA } from "../constants";
import { BASE_URL } from "@/config/config";
/**
 * 上传file
 * @param body
 */
export const upload_file = (body: any) => {
  fetch(BASE_URL + UPLOAD_FILE, {
    method: "POST",
    body
  });
};
/**
 * 手动拼接formdata
 * @param headers
 * @param body
 */
export const form_upload = (headers: any, body: any) => {
  fetch(BASE_URL + UPLOAD_FORM_DATA, {
    method: "POST",
    body,
    headers
  });
};
