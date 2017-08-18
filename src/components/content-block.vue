<template>
  <div class="columns">
    <div class="column" v-if="!leftAlign">
      <div class="content-image" :style="imageStr"></div>
    </div>
    <div class="column">
      <h3>{{ copy.header }}</h3> 
      <p v-if="copy.isText">{{ copy.text }}</p>
      <ul v-if="!copy.isText">
        <li v-for="item in copy.items">{{ item }}</li>
      </ul>
    </div>
    <div class="column" v-if="leftAlign>
      <div class="content-image" :style="imageStr"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'content-block',
  props: { 
    leftAlign: Boolean,
    imageUrl: String,
    copy: Object
  },
  computed: {
    imageStr: function() {
      return 'background-image:url(' + this.imageUrl + ');';
    }
  },
  data() {
    return {
      
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="sass" scoped>

</style>
