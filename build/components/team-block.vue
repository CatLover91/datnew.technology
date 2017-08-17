<template>
  <div class="team-block>
    <div class="team-header>Meet the Team</div>
    <div class="team-cont">
      <div class="team-member" v-for="member in team">
        <div class="member-image" :style="'background-image:url('+member.image+');'"></div>
        <div class="member-name">{{ member.name }}</div>
        <div class="member-role">{{ member.role }}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'team-block',
  props: { 
    team: Object
  }  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="sass" scoped>
.team-block {
  .team-header {
    text-align:center;
  }
  .team-cont {
    display: flex;
    justify-content: space-around;
    align-items:center;
    .team-member {
      padding:20px;
      text-align:center;
      .member-image {
        width:150px;
        height:150px;
        border-radius:50%;
        border:2px solid white;
        margin: 20px auto;
      }
    }
  }
}
</style>
