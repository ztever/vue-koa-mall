export interface UserLoginParams {
  user_name: string;
  password: string;
}

export interface RegisterUserType {
  user_name: string;
  password: string;
  icon: string;
  telephone: string;
  verify_code: string;
  uuid: string;
}

export interface UpdateUser {
  user_name: string;
  icon: string;
}
