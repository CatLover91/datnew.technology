module.exports = {

  '/': {
    component: require('./components/home')
  },

  '/about': {
    component: require('./components/about')
  },

  '*': {
    component: require('./components/notFound')
  }

}
