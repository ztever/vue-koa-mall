<template>
  <div id="list">List</div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
@Component({
  components: {}
})
export default class List extends Vue {}
</script>

<style scoped lang="scss">
#list {
  flex: 1;
}
</style>
