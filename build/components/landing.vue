<template>
  <div class="cta">
    <div class="cta-block">
      <div class="image-cover">
        <div class="surtext">Dat New</div>
        <div class="subtext">Technology</div>
      </div>
    <div>
  </div>
</template>

<script>
export default {
  name: 'landing',
  data}() {
    return {
      
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="sass" scoped>
.cta {
  position:relative;
  width:100%;
  height:100%;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
  .cta-block {
    border-radius:3px;
    width:33%;
    min-width:400px;
    height:200px;
    border:3px solid white;
    background-repeat:no-repeat;
    background-size: cover;
    background-image:url('https://files.catbox.moe/sloccc.gif');
    .image-cover {
      width:100%;
      height:100%;
      background-color:rgba(240, 90, 127,0.5);
      position:relative;
      width:100%;
      height:100%;
      display:flex;
      flex-direction:column;
      align-items:center;
      justify-content:center;
      color:#303030;

      .surtext {
        font-family: 'Sarina', cursive;
        font-size:30px;
        font-weight:600;
        text-align:center;
        text-shadow: 0 1px white;
      }
      .subtext {
        font-family: 'Sarina', cursive;
        font-size:50px;
        font-weight:600;
        text-shadow: 0 1px white;
      }
    }
  }
}
</style>
