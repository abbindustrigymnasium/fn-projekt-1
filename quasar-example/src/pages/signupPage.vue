<template>
  <q-page class="bodycolor window-height window-width row justify-center items-center">
    <div class="column">
      <div class="row">
        <h5 class="text-h5 text-white q-my-md">Company & Co</h5>
      </div>
      <div class="row">
        <q-card square bordered class="q-pa-lg shadow-1">
          <q-card-section>
            <q-form class="q-gutter-md">
              <q-input square filled clearable v-model="email" type="email" label="Email" class="email"/>
              <q-input square filled clearable v-model="confirmEmail" type="email" label="Confirm email" class="email" />
              <q-input square filled clearable v-model="password" type="password" label="Password" />
              <q-input square filled clearable v-model="confirmPassword" type="password" label="Confirm password" />

            </q-form>
          </q-card-section>
          <q-card-actions class="q-px-md">
            <q-btn unelevated color="light-green-7" size="lg" class="full-width" label="sign up" />
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
      email: '',
      password: '',
      confirmEmail: '',
      confirmPassword: ''
    }
  },
  data: function () {
    return {
      emailColor: 'primary',
    }
  },
  methods: {
    changeMe: function () {
      if(email == confirmEmail){
        document.getElementById(".email").style.color = "green";

      }

    }
  }
}
</script>

<style>
.q-card {
  width: 360px;
}

.email{
  border: solid;
  border-color: blue;
}
.bodycolor{
  background-color: #c2d1e5;
  /* background-color: #ff9d70; */
}
</style>
