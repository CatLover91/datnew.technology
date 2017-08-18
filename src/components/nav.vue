<template>
  <div class="nav-bar" :class="{pop:pop}">
    <div class="nav-side left"></div>
    <div class="nav-center"><div class="nav-center-text">Dat New</div></div>
    <div class="nav-side right"></div>
  </div>
</template>

<script>
export default {
  name: 'nav',
  data}() {
    return {
      burst: pop
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="sass" scoped>
.nav-bar {
  background-color:transparent;
  border-bottom:2px solid transparent;
  position: fixed;
  width:100%;
  top:0;
  display:flex;
  justify-content:space-between;
  transition:150ms ease all;
  z-index:1;
  .nav-side {
    min-width:1px;
  }
  .nav-center {
    position:relative;
    margin-top:20px;
    margin-bottom:5px;
    transition:150ms ease all;
    opacity:0;
    .nav-center-text { 
      font-size:30px;
      font-weight:600;
      font-family: 'Sarina', cursive;
      background-size:cover;
      background-image: url('https://files.catbox.moe/sloccc.gif');
      background-repeat: no-repeat;
      background-position: center;
      -webkit-text-fill-color: transparent;
      -webkit-background-clip: text;
                          
      color: #000;
      text-shadow: 0px 0px 0 rgba(240, 90, 127, 0.5);
    }
  }
  &.pop {
    background-color:#303030;
    border-color:#fff;
    .nav-center {
      opacity:1;
    }
  }
}
</style>
