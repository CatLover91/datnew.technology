<template>
  <div class="quote-full" :style="imageStr">
    <div class="quote-cont">
      <div class="fa fa-quote-left">
      <div class="quote">{{ text }}</div>
      <div class="fa fa-quote-right"></div>
    </div>
    <div class="quote-attrib">{{ attrib }}</div>
  </div>
</template>

<script>
export default {
  name: 'quote-block',
  props: { 
    text: String,
    attrib: String,
    imageUrl: String
  },
  computed: {
    imageStr: function() {
      return 'background-image:url(' + this.imageUrl + ');';
    }
  }
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="sass" scoped>
.quote-full {
  width:100%;
  background-repeat:no-repeat;
  background-size: cover;
  &:after {
    content:"";
    position:absolute;
    width:100%;
    height:100%;
    background-color:rgba(51,51,51,0.6);
    z-index:-1;
  }
  .quote-cont {
    margin: 0 auto;
    max-width:800px;
    font-size:26px;
    display:flex;
    .quote {
      flex-grow:1;
      padding:0 15px;
      max-width:680px
    }
  }
  .quote-attrib {
    width:100%;
    max-width:740px;
    margin:0 auto;
    text-align:right;
  }
}
</style>
