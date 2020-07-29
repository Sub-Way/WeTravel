<template>
  <div id="footer">
    <footer class="page-footer" style="background-color: #A9A9A9;">
      <div class="container">
        <div class="row">
          <div class="col-md-12 py-5">
            <div class="flex-center">
              <a class="fb-ic">
                <font-awesome-icon :icon="['fab', 'facebook']" size="2x"/>
              </a>
              <a class="tw-ic">
                <font-awesome-icon :icon="['fab', 'twitter']" size="2x"/>
              </a>
              <a class="ins-ic">
                <font-awesome-icon :icon="['fab', 'instagram']" size="2x"/>
              </a>
              <a class="pin-ic">
                <font-awesome-icon :icon="['fab', 'pinterest']" size="2x"/>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-copyright text-center py-3">
        <h5>서울시 강남구 테헤란로 212 멀티캠퍼스, 14층</h5>
        <h5>© 2020 Copyright: WeTravel Team</h5>
      </div>
      <!-- Copyright -->

    </footer>
  </div>
</template>

<script>
export default {

}
</script>

<style>
  .page-footer a{
    margin: 40px;
  }
</style>