module.exports = {
  root: true,
  env: {
    node: true
  },
  extends: [
    "plugin:vue/essential",
    "eslint:recommended",
    "@vue/typescript/recommended",
    "@vue/prettier",
  ],
  // "plugins": ["import", "prettier"],
  // "parser": "babel-eslint",
  // "settings": {
  //     "import/resolver": {
  //         "node": {
  //             "extensions": [".js", ".jsx"]
  //         }
  //     }
  // },
  parserOptions: {
    ecmaVersion: 2020
  },
  rules: {
    "no-console": process.env.NODE_ENV === "production" ? "error" : "off",
    "no-debugger": process.env.NODE_ENV === "production" ? "error" : "off",
    "@typescript-eslint/no-explicit-any": "off",
    "@typescript-eslint/no-inferrable-types": "off",
    "@typescript-eslint/camelcase": "off"
  }
};
