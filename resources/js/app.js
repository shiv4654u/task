require('./bootstrap');

import Vue from 'vue';
window.Vue = Vue;


import VueRouter from 'vue-router';


import VueResource  from 'vue-resource';
import VueAxios from 'vue-axios';

import axios from 'axios';



import App from './App.vue';
Vue.use(VueRouter, VueResource,VueAxios, axios);

import HomeComponent from './components/HomeComponent.vue';
import PlayersComponent from './components/PlayersComponent.vue';
import MatchesComponent from './components/MatchesComponent.vue';
import PointsComponent from './components/PointsComponent.vue';

const routes = [
  {
      name: 'home',
      path: '/',
      component: HomeComponent
  },
  {
      name: 'players',
      path: '/players/:id',
      component: PlayersComponent
  },
  {
    name: 'matches',
    path: '/matches',
    component: MatchesComponent
  },
  {
    name: 'points',
    path: '/points',
    component: PointsComponent
  },
];

const router = new VueRouter({ mode: 'history', routes: routes});
const app = new Vue(Vue.util.extend({ router }, App)).$mount('#app');