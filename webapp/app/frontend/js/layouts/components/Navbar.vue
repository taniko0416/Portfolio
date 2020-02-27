<template>
  <b-navbar type="is-white" :fixed-top="true">

    <template slot="brand">
      <b-navbar-item href="/">
        <img src="https://raw.githubusercontent.com/buefy/buefy/dev/static/img/buefy-logo.png">
      </b-navbar-item>
    </template>

    <template slot="start">
      <b-navbar-item href="#">Home</b-navbar-item>
      <b-navbar-item href="#">Documentation</b-navbar-item>
      <b-navbar-dropdown label="Info">
        <b-navbar-item href="#">About</b-navbar-item>
        <b-navbar-item href="#">Contact</b-navbar-item>
      </b-navbar-dropdown>
    </template>

    <template slot="end">
      <b-navbar-item tag="div">
        <div class="buttons">
          <a href="/users/sign_up" class="button is-primary"><strong>Sign up</strong></a>
          <a href="/users/sign_in" class="button is-light">Log in</a>
          <a href="/users/sign_out" class="button is-light">Log out</a>
        </div>
      </b-navbar-item>
    </template>

  </b-navbar>
</template>

<script>
</script>

<style lang="scss" module>
</style>
