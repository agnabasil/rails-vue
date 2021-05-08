
<template>
  <div id="app">
    <v-app>
      <p>{{ message }}</p>
      <record/>
    </v-app>
  </div>
</template>

<script>
import record from "./packs/components/record.vue";
export default {
  data: function() {
    return {
      message: "Record List!"
    };
  },
  components: {
    record: record
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
