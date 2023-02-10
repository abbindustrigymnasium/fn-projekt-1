<template>
  <q-page class="bodycolor window-height window-width row justify-center items-center">
    <div class="column items-center	">
      <div class="row">
        <h5 class="text-h5 text-white q-my-md header">Sign In</h5>
      </div>
      <div class="row">
        <q-card square bordered class="q-pa-lg shadow-1">
          <q-card-section>
            <q-form class="q-gutter-md">
              <q-input square filled clearable v-model="email" type="username" label="username" label-color="deep-orange" color="deep-orange"/>
              <q-input square filled clearable v-model="password" type="password" label="password" label-color="deep-orange" color="deep-orange" />
            </q-form>
          </q-card-section>
          <q-card-actions class="q-px-md">
            <q-btn unelevated color="deep-orange" size="lg" class="full-width" label="Login" />
          </q-card-actions>
          <q-card-section class="text-center q-pa-none">
            <p class="text-grey-6">Not reigistered?</p>
            <router-link to="/signup" class="text-grey-6" >Created an Account</router-link>
            <p class="text-grey-6"  to="/login"></p>

          </q-card-section>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'Login',
  data () {
    return {
      username: '',
      password: ''
    }
  }
}
</script>

<style>
.q-card {
  width: 360px;
}
.bodycolor{
  background-color: #c2d1e5;
  /* background-color: #ff9d70; */
}
.header{
  text-align: center;
}

</style>
