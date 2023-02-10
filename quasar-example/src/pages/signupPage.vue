<template>
  <q-page class="bodycolor window-height window-width row justify-center items-center">
    <div class="column items-center	">
      <div class="row">
        <h5 class="text-h5 text-white q-my-md">Create an Account</h5>
      </div>
      <div class="row">
        <q-card square bordered class="q-pa-lg shadow-1">
          <q-card-section>
            <q-form class="q-gutter-md">
              <q-input square filled clearable v-model="email" type="Username" label="Create Username" class="email" label-color="deep-orange" color="deep-orange"/>
              <!-- <q-input square filled clearable v-model="confirmEmail" type="email" label="Confirm email" class="email" /> -->
              <q-input square filled clearable v-model="password" type="password" label="Password" label-color="deep-orange" color="deep-orange"/>
              <q-input square filled clearable v-model="confirmPassword" type="password" label="Confirm password" label-color="deep-orange" color="deep-orange" />

            </q-form>
          </q-card-section>
          <q-card-actions class="q-px-md">
            <q-btn style="background-color: #fb4c1f; color: white" size="lg" class="full-width" label="sign up" />
          </q-card-actions>
          <q-card-section class="text-center q-pa-none">

          </q-card-section>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'SignUp',
  data () {
    return {
      username: '',
      confirmEmail: '',
      confirmPassword: ''
    }
  }
}
</script>

<style>
.q-card {
  width: 360px;
}
.bodycolor{
  background-color: #95bddc;
  /* background-color: #ff9d70; */
}
</style>
